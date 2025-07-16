function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(16, 1);
g2_v(1)=(-(params(4)*getPowerDeriv(y(15),(-params(7)),2)));
g2_v(2)=(-((-params(5))*getPowerDeriv(1-y(17),(-params(8)),2)));
g2_v(3)=(-((-params(1))/(y(3)*y(3))));
g2_v(4)=(-((-((-(params(1)*y(14)))*(y(3)+y(3))))/(y(3)*y(3)*y(3)*y(3))));
g2_v(5)=(-((-(1-params(1)))/(y(17)*y(17))));
g2_v(6)=(-((-((-(y(14)*(1-params(1))))*(y(17)+y(17))))/(y(17)*y(17)*y(17)*y(17))));
g2_v(7)=(-params(2));
g2_v(8)=(-((-(y(24)*(y(23)+y(23))))/(y(23)*y(23)*y(23)*y(23))));
g2_v(9)=(-(1/(y(23)*y(23))));
g2_v(10)=(-(T(3)*y(18)*getPowerDeriv(y(3),params(1),2)));
g2_v(11)=(-(T(5)*T(6)));
g2_v(12)=(-(T(3)*T(4)));
g2_v(13)=(-(T(2)*getPowerDeriv(y(17),1-params(1),2)));
g2_v(14)=(-(T(1)*T(6)));
g2_v(15)=(-(params(6)*(-1)/(y(5)*y(5))));
g2_v(16)=(-1)/(y(18)*y(18));
end
