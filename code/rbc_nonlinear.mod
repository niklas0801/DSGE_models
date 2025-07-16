@#define LOGUTILITY = 1

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