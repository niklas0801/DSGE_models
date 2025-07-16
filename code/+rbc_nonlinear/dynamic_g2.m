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
g2_i = zeros(23,1);
g2_j = zeros(23,1);
g2_v = zeros(23,1);

g2_i(1)=1;
g2_i(2)=2;
g2_i(3)=3;
g2_i(4)=3;
g2_i(5)=3;
g2_i(6)=4;
g2_i(7)=4;
g2_i(8)=4;
g2_i(9)=5;
g2_i(10)=5;
g2_i(11)=6;
g2_i(12)=6;
g2_i(13)=6;
g2_i(14)=9;
g2_i(15)=9;
g2_i(16)=9;
g2_i(17)=9;
g2_i(18)=9;
g2_i(19)=9;
g2_i(20)=9;
g2_i(21)=9;
g2_i(22)=13;
g2_i(23)=13;
g2_j(1)=58;
g2_j(2)=96;
g2_j(3)=37;
g2_j(4)=3;
g2_j(5)=1;
g2_j(6)=42;
g2_j(7)=93;
g2_j(8)=96;
g2_j(9)=287;
g2_j(10)=304;
g2_j(11)=210;
g2_j(12)=211;
g2_j(13)=228;
g2_j(14)=1;
g2_j(15)=6;
g2_j(16)=91;
g2_j(17)=7;
g2_j(18)=109;
g2_j(19)=96;
g2_j(20)=97;
g2_j(21)=114;
g2_j(22)=20;
g2_j(23)=115;
g2_v(1)=(-(params(4)*getPowerDeriv(y(4),(-params(7)),2)));
g2_v(2)=(-((-params(5))*getPowerDeriv(1-y(6),(-params(8)),2)));
g2_v(3)=(-((-params(1))/(y(1)*y(1))));
g2_v(4)=g2_v(3);
g2_v(5)=(-((-((-(params(1)*y(3)))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))));
g2_v(6)=(-((-(1-params(1)))/(y(6)*y(6))));
g2_v(7)=g2_v(6);
g2_v(8)=(-((-((-(y(3)*(1-params(1))))*(y(6)+y(6))))/(y(6)*y(6)*y(6)*y(6))));
g2_v(9)=(-params(2));
g2_v(10)=g2_v(9);
g2_v(11)=(-((-(y(13)*(y(12)+y(12))))/(y(12)*y(12)*y(12)*y(12))));
g2_v(12)=(-(1/(y(12)*y(12))));
g2_v(13)=g2_v(12);
g2_v(14)=(-(T(3)*y(7)*getPowerDeriv(y(1),params(1),2)));
g2_v(15)=(-(T(5)*T(6)));
g2_v(16)=g2_v(15);
g2_v(17)=(-(T(3)*T(4)));
g2_v(18)=g2_v(17);
g2_v(19)=(-(T(2)*getPowerDeriv(y(6),1-params(1),2)));
g2_v(20)=(-(T(1)*T(6)));
g2_v(21)=g2_v(20);
g2_v(22)=(-(params(6)*(-1)/(y(2)*y(2))));
g2_v(23)=(-1)/(y(7)*y(7));
g2 = sparse(g2_i,g2_j,g2_v,13,324);
end
