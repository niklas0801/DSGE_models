function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(5, 1);
end
[T_order, T] = rbc_nonlinear.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(9, 1);
    residual(1) = (T(1)) - ((1-params(3)+y(6))*T(1)*params(2));
    residual(2) = (y(7)) - (T(2)/T(1));
    residual(3) = (y(3)) - (y(3)*(1-params(3))+y(8));
    residual(4) = (y(1)) - (y(2)+y(8));
    residual(5) = (y(1)) - (T(4)*T(5));
    residual(6) = (y(9)) - (1);
    residual(7) = (y(7)) - (y(1)*(1-params(1))/y(4));
    residual(8) = (y(6)) - (params(1)*y(1)/y(3));
    residual(9) = (log(y(5))) - (log(y(5))*params(8)+x(1));
end
