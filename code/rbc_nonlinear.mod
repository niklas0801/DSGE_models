% Defining endogenous variables
var
    y c k l a r w iv mc uc ul fl fk
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
    RHOA
    ETAC
    ETAL
;

% Parameter calibration
ALPHA = 0.35;
BETA = 0.99;
DELTA = 0.025;
GAMMA = 1;
PSI = 1.6;
RHOA = 0.9;
ETAC = 2;
ETAL = 1;

% Model equations
model;
% marginal utility of consumption
uc = GAMMA*c^(-ETAC);
% marginal utility of labor
ul = -PSI*(1-l)^(-ETAL);
% marginal products of production
fk = ALPHA*y/k(-1);
fl = (1-ALPHA)*y/l;

% intertemporal optimality (Euler)
uc = BETA*uc(+1)*(1-DELTA+r(+1));
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