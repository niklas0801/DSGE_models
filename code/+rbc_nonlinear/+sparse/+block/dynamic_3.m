function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(9, 1);
  y(25)=y(14)*(1-params(1))/y(17);
  y(20)=y(25);
  residual(1)=(y(26))-(params(1)*y(14)/y(3));
  residual(2)=(y(20))-((-y(24))/y(23));
  residual(3)=(y(14))-(y(15)+y(21));
  T(1)=y(18)*y(3)^params(1);
  T(2)=y(17)^(1-params(1));
  residual(4)=(y(14))-(T(1)*T(2));
  residual(5)=(y(23))-(params(4)*y(15)^(-params(7)));
  residual(6)=(y(24))-((-params(5))*(1-y(17))^(-params(8)));
  residual(7)=(y(16))-(y(3)*(1-params(3))+y(21));
  residual(8)=(y(23))-(params(2)*y(36)*(1-params(3)+y(32)));
  residual(9)=(y(19))-(y(26));
if nargout > 3
    g1_v = NaN(25, 1);
g1_v(1)=(-((-(params(1)*y(14)))/(y(3)*y(3))));
g1_v(2)=(-(T(2)*y(18)*getPowerDeriv(y(3),params(1),1)));
g1_v(3)=(-(1-params(3)));
g1_v(4)=1;
g1_v(5)=(-1);
g1_v(6)=(-((-1)/y(23)));
g1_v(7)=1;
g1_v(8)=(-1);
g1_v(9)=(-1);
g1_v(10)=(-(params(1)/y(3)));
g1_v(11)=(1-params(1))/y(17);
g1_v(12)=1;
g1_v(13)=1;
g1_v(14)=(-1);
g1_v(15)=(-(params(4)*getPowerDeriv(y(15),(-params(7)),1)));
g1_v(16)=(-(y(14)*(1-params(1))))/(y(17)*y(17));
g1_v(17)=(-(T(1)*getPowerDeriv(y(17),1-params(1),1)));
g1_v(18)=(-((-params(5))*(-(getPowerDeriv(1-y(17),(-params(8)),1)))));
g1_v(19)=1;
g1_v(20)=(-(y(24)/(y(23)*y(23))));
g1_v(21)=1;
g1_v(22)=1;
g1_v(23)=1;
g1_v(24)=(-(params(2)*(1-params(3)+y(32))));
g1_v(25)=(-(params(2)*y(36)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 9, 27);
end
end
