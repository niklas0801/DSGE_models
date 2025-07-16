function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(6, 1);
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(9, 1);
    residual(1) = (T(1)) - ((1-params(3)+y(24))*T(5));
    residual(2) = (y(16)) - (T(6)/T(1));
    residual(3) = (y(12)) - (y(3)*(1-params(3))+y(17));
    residual(4) = (y(10)) - (y(11)+y(17));
    residual(5) = (y(10)) - (T(3)*T(4));
    residual(6) = (y(18)) - (1);
    residual(7) = (y(16)) - (y(10)*(1-params(1))/y(13));
    residual(8) = (y(15)) - (params(1)*y(10)/y(3));
    residual(9) = (log(y(14))) - (params(6)*log(y(5))+x(1));
end
