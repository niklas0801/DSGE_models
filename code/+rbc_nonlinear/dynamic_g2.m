function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g2
%

if T_flag
    T = rbc_nonlinear.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(24,1);
g2_j = zeros(24,1);
g2_v = zeros(24,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=2;
g2_i(6)=2;
g2_i(7)=2;
g2_i(8)=2;
g2_i(9)=5;
g2_i(10)=5;
g2_i(11)=5;
g2_i(12)=5;
g2_i(13)=5;
g2_i(14)=5;
g2_i(15)=5;
g2_i(16)=5;
g2_i(17)=7;
g2_i(18)=7;
g2_i(19)=7;
g2_i(20)=8;
g2_i(21)=8;
g2_i(22)=8;
g2_i(23)=9;
g2_i(24)=9;
g2_j(1)=46;
g2_j(2)=166;
g2_j(3)=167;
g2_j(4)=180;
g2_j(5)=46;
g2_j(6)=48;
g2_j(7)=74;
g2_j(8)=76;
g2_j(9)=1;
g2_j(10)=6;
g2_j(11)=71;
g2_j(12)=7;
g2_j(13)=85;
g2_j(14)=76;
g2_j(15)=77;
g2_j(16)=90;
g2_j(17)=34;
g2_j(18)=73;
g2_j(19)=76;
g2_j(20)=29;
g2_j(21)=3;
g2_j(22)=1;
g2_j(23)=16;
g2_j(24)=91;
g2_v(1)=T(13);
g2_v(2)=(-((1-params(3)+y(13))*params(2)*params(4)*getPowerDeriv(y(12),(-1),2)));
g2_v(3)=(-T(8));
g2_v(4)=g2_v(3);
g2_v(5)=(-((T(1)*T(1)*(-(T(6)*T(13)))-(-(T(6)*T(7)))*(T(1)*T(7)+T(1)*T(7)))/(T(1)*T(1)*T(1)*T(1))));
g2_v(6)=(-((-(T(7)*T(11)))/(T(1)*T(1))));
g2_v(7)=g2_v(6);
g2_v(8)=(-((-((-params(5))*getPowerDeriv(1-y(6),(-1),2)))/T(1)));
g2_v(9)=(-(T(4)*y(7)*getPowerDeriv(y(1),params(1),2)));
g2_v(10)=(-(T(10)*T(12)));
g2_v(11)=g2_v(10);
g2_v(12)=(-(T(4)*T(9)));
g2_v(13)=g2_v(12);
g2_v(14)=(-(T(3)*getPowerDeriv(y(6),1-params(1),2)));
g2_v(15)=(-(T(2)*T(12)));
g2_v(16)=g2_v(15);
g2_v(17)=(-((-(1-params(1)))/(y(6)*y(6))));
g2_v(18)=g2_v(17);
g2_v(19)=(-((-((-(y(3)*(1-params(1))))*(y(6)+y(6))))/(y(6)*y(6)*y(6)*y(6))));
g2_v(20)=(-((-params(1))/(y(1)*y(1))));
g2_v(21)=g2_v(20);
g2_v(22)=(-((-((-(params(1)*y(3)))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))));
g2_v(23)=(-(params(6)*(-1)/(y(2)*y(2))));
g2_v(24)=(-1)/(y(7)*y(7));
g2 = sparse(g2_i,g2_j,g2_v,9,196);
end
