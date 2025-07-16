function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(34, 1);
g1_v(1)=(-((-(params(1)*y(14)))/(y(3)*y(3))));
g1_v(2)=(-(1-params(3)));
g1_v(3)=(-(T(3)*T(5)));
g1_v(4)=(-(params(6)*1/y(5)));
g1_v(5)=(-(params(1)/y(3)));
g1_v(6)=(-((1-params(1))/y(17)));
g1_v(7)=1;
g1_v(8)=1;
g1_v(9)=(-(params(4)*getPowerDeriv(y(15),(-params(7)),1)));
g1_v(10)=(-1);
g1_v(11)=1;
g1_v(12)=(-((-params(5))*(-(getPowerDeriv(1-y(17),(-params(8)),1)))));
g1_v(13)=(-((-(y(14)*(1-params(1))))/(y(17)*y(17))));
g1_v(14)=(-(T(2)*T(6)));
g1_v(15)=(-(T(1)*T(3)));
g1_v(16)=1/y(18);
g1_v(17)=1;
g1_v(18)=1;
g1_v(19)=1;
g1_v(20)=(-1);
g1_v(21)=(-1);
g1_v(22)=1;
g1_v(23)=1;
g1_v(24)=1;
g1_v(25)=(-(y(24)/(y(23)*y(23))));
g1_v(26)=1;
g1_v(27)=(-((-1)/y(23)));
g1_v(28)=1;
g1_v(29)=(-1);
g1_v(30)=1;
g1_v(31)=(-1);
g1_v(32)=(-(params(2)*y(36)));
g1_v(33)=(-(params(2)*(1-params(3)+y(32))));
g1_v(34)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 13, 40);
end
