@#define LOGUTILITY = 0

% Defining endogenous variables
var
    y c k l a r w iv mc
;

% Defining exogenous variables
varexo
    epsa
;

% Defining parameters
parameters
    ALPHA
    BETA
    DELTA
    GAMMA
    PSI
    @#if LOGUTILITY == 0
    ETAC
    ETAL
    @#endif
    RHOA
;

% Parameter calibration
ALPHA = 0.35;
BETA = 0.99;
DELTA = 0.025;
GAMMA = 1;
PSI = 1.6;
@#if LOGUTILITY == 0
ETAC = 2;
ETAL = 1;
@#endif
RHOA = 0.9;

% Model equations
model;
% marginal utility of consumption and labor
@#if LOGUTILITY == 1
#uc = GAMMA*c^(-1);
#ucp = GAMMA*c(+1)^(-1);
#ul = -PSI*(1-l)^(-1);
@#else
#uc = GAMMA*c^(-ETAC);
#ucp = GAMMA*c(+1)^(-ETAC);
#ul = -PSI*(1-l)^(-ETAL);
@#endif

% marginal products of production
#fk = ALPHA*y/k(-1);
#fl = (1-ALPHA)*y/l;
% intertemporal optimality (Euler)
uc = BETA*ucp*(1-DELTA+r(+1));
% labor supply
w = -ul/uc;
% capital accumulation
k = (1-DELTA)*k(-1) + iv;
% market clearing
y = c + iv;
% production function
y = a*k(-1)^ALPHA*l^(1-ALPHA);
% marginal costs
mc = 1;
% labor demand
w = mc*fl;
% capital demand
r = mc*fk;
% total factor productivity
log(a) = RHOA*log(a(-1)) + epsa;
end;

%--------------------------%
% Steady State Computation %
%--------------------------%
@#define AnalyticalSteadyState = 1

@#if AnalyticalSteadyState == 1

steady_state_model;

a = 1;
mc = 1;
r = 1/BETA + DELTA - 1;
K_L = (mc*ALPHA*a/r)^(1/(1-ALPHA));
w = mc*(1-ALPHA)*a*K_L^ALPHA;
IV_L = DELTA*K_L;
Y_L = a*(K_L)^ALPHA;
C_L = Y_L - IV_L;
@#if LOGUTILITY == 1
l = GAMMA/PSI*C_L^(-1)*w/(1+GAMMA/PSI*C_L^(-1)*w);
@#else
L0 = 1/3;
l = rbc_steady_state_helper(L0, w, C_L, ETAC, ETAL, PSI, GAMMA);
@#endif
c = C_L*l;
y = Y_L*l;
iv = IV_L*l;
k = K_L*l;

end;

@#else

initval;
a = 1;
mc = 1;
r = 0.03;
l = 1/3;
y = 1.2;
c = 0.9;
iv = 0.35;
k = 12;
w = 2.25;
end;

@#endif

steady;

shocks;
var epsa; periods 1; values -0.1;
end;

% make sure everything is set up correctly
%perfect_foresight_setup(periods=4);
%oo_.exo_simul
%oo_.endo_simul

perfect_foresight_setup(periods=300);
perfect_foresight_solver;

rplot c iv y;
rplot l w;
rplot r;
rplot k;
rplot a;