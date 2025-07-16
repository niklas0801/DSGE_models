function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(6, 1);
  T(1)=params(4)*y(11)^(-1);
  T(2)=(-((-params(5))*(1-y(13))^(-1)));
  y(16)=T(2)/T(1);
  residual(1)=(y(10))-(y(11)+y(17));
  T(3)=y(14)*y(3)^params(1);
  T(4)=y(13)^(1-params(1));
  residual(2)=(y(10))-(T(3)*T(4));
  residual(3)=(y(16))-(y(10)*(1-params(1))/y(13));
  residual(4)=(y(12))-(y(3)*(1-params(3))+y(17));
  T(5)=params(4)*y(20)^(-1)*params(2);
  residual(5)=(T(1))-((1-params(3)+y(24))*T(5));
  residual(6)=(y(15))-(params(1)*y(10)/y(3));
  T(6)=params(4)*getPowerDeriv(y(11),(-1),1);
if nargout > 3
    g1_v = NaN(18, 1);
g1_v(1)=(-(T(4)*y(14)*getPowerDeriv(y(3),params(1),1)));
g1_v(2)=(-(1-params(3)));
g1_v(3)=(-((-(params(1)*y(10)))/(y(3)*y(3))));
g1_v(4)=(-1);
g1_v(5)=(-1);
g1_v(6)=(-(T(3)*getPowerDeriv(y(13),1-params(1),1)));
g1_v(7)=(-((-params(5))*(-(getPowerDeriv(1-y(13),(-1),1)))))/T(1)-(-(y(10)*(1-params(1))))/(y(13)*y(13));
g1_v(8)=1;
g1_v(9)=1;
g1_v(10)=(-((1-params(1))/y(13)));
g1_v(11)=(-(params(1)/y(3)));
g1_v(12)=1;
g1_v(13)=(-1);
g1_v(14)=(-(T(2)*T(6)))/(T(1)*T(1));
g1_v(15)=T(6);
g1_v(16)=1;
g1_v(17)=(-((1-params(3)+y(24))*params(2)*params(4)*getPowerDeriv(y(20),(-1),1)));
g1_v(18)=(-T(5));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 6, 18);
end
end
