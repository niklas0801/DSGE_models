function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(13, 1);
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(17, 1);
g2_v(1)=T(13);
g2_v(2)=(-((1-params(3)+y(24))*params(2)*params(4)*getPowerDeriv(y(20),(-params(6)),2)));
g2_v(3)=(-T(8));
g2_v(4)=(-((T(1)*T(1)*(-(T(6)*T(13)))-(-(T(6)*T(7)))*(T(1)*T(7)+T(1)*T(7)))/(T(1)*T(1)*T(1)*T(1))));
g2_v(5)=(-((-(T(7)*T(11)))/(T(1)*T(1))));
g2_v(6)=(-((-((-params(5))*getPowerDeriv(1-y(13),(-params(7)),2)))/T(1)));
g2_v(7)=(-(T(4)*y(14)*getPowerDeriv(y(3),params(1),2)));
g2_v(8)=(-(T(10)*T(12)));
g2_v(9)=(-(T(4)*T(9)));
g2_v(10)=(-(T(3)*getPowerDeriv(y(13),1-params(1),2)));
g2_v(11)=(-(T(2)*T(12)));
g2_v(12)=(-((-(1-params(1)))/(y(13)*y(13))));
g2_v(13)=(-((-((-(y(10)*(1-params(1))))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13))));
g2_v(14)=(-((-params(1))/(y(3)*y(3))));
g2_v(15)=(-((-((-(params(1)*y(10)))*(y(3)+y(3))))/(y(3)*y(3)*y(3)*y(3))));
g2_v(16)=(-(params(8)*(-1)/(y(5)*y(5))));
g2_v(17)=(-1)/(y(14)*y(14));
end
