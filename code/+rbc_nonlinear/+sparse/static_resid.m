function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = rbc_nonlinear.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(13, 1);
    residual(1) = (y(10)) - (params(4)*y(2)^(-params(7)));
    residual(2) = (y(11)) - ((-params(5))*(1-y(4))^(-params(8)));
    residual(3) = (y(13)) - (params(1)*y(1)/y(3));
    residual(4) = (y(12)) - (y(1)*(1-params(1))/y(4));
    residual(5) = (y(10)) - (y(10)*params(2)*(1-params(3)+y(6)));
    residual(6) = (y(7)) - ((-y(11))/y(10));
    residual(7) = (y(3)) - (y(3)*(1-params(3))+y(8));
    residual(8) = (y(1)) - (y(2)+y(8));
    residual(9) = (y(1)) - (T(2)*T(3));
    residual(10) = (y(9)) - (1);
    residual(11) = (y(7)) - (y(12));
    residual(12) = (y(6)) - (y(13));
    residual(13) = (log(y(5))) - (log(y(5))*params(6)+x(1));
end
