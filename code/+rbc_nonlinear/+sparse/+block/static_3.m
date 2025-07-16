function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(11, 1);
  residual(1)=(y(13))-(params(1)*y(1)/y(3));
  residual(2)=(y(12))-(y(1)*(1-params(1))/y(4));
  residual(3)=(y(10))-(y(10)*params(2)*(1-params(3)+y(6)));
  residual(4)=(y(7))-((-y(11))/y(10));
  residual(5)=(y(3))-(y(3)*(1-params(3))+y(8));
  residual(6)=(y(1))-(y(2)+y(8));
  T(2)=y(5)*y(3)^params(1);
  T(3)=y(4)^(1-params(1));
  residual(7)=(y(1))-(T(2)*T(3));
  residual(8)=(y(10))-(params(4)*y(2)^(-params(7)));
  residual(9)=(y(7))-(y(12));
  residual(10)=(y(6))-(y(13));
  residual(11)=(y(11))-((-params(5))*(1-y(4))^(-params(8)));
if nargout > 3
    g1_v = NaN(27, 1);
g1_v(1)=1;
g1_v(2)=(-1);
g1_v(3)=(-((-(y(1)*(1-params(1))))/(y(4)*y(4))));
g1_v(4)=(-(T(2)*getPowerDeriv(y(4),1-params(1),1)));
g1_v(5)=(-((-params(5))*(-(getPowerDeriv(1-y(4),(-params(8)),1)))));
g1_v(6)=1-params(2)*(1-params(3)+y(6));
g1_v(7)=(-(y(11)/(y(10)*y(10))));
g1_v(8)=1;
g1_v(9)=1;
g1_v(10)=1;
g1_v(11)=(-1);
g1_v(12)=(-1);
g1_v(13)=(-(params(1)/y(3)));
g1_v(14)=(-((1-params(1))/y(4)));
g1_v(15)=1;
g1_v(16)=1;
g1_v(17)=(-((-(params(1)*y(1)))/(y(3)*y(3))));
g1_v(18)=1-(1-params(3));
g1_v(19)=(-(T(3)*y(5)*getPowerDeriv(y(3),params(1),1)));
g1_v(20)=(-1);
g1_v(21)=(-(params(4)*getPowerDeriv(y(2),(-params(7)),1)));
g1_v(22)=1;
g1_v(23)=(-1);
g1_v(24)=(-(y(10)*params(2)));
g1_v(25)=1;
g1_v(26)=(-((-1)/y(10)));
g1_v(27)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 11, 11);
end
end
