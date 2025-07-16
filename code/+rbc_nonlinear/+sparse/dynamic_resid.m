function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(3, 1);
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(13, 1);
    residual(1) = (y(23)) - (params(4)*y(15)^(-params(7)));
    residual(2) = (y(24)) - ((-params(5))*(1-y(17))^(-params(8)));
    residual(3) = (y(26)) - (params(1)*y(14)/y(3));
    residual(4) = (y(25)) - (y(14)*(1-params(1))/y(17));
    residual(5) = (y(23)) - (params(2)*y(36)*(1-params(3)+y(32)));
    residual(6) = (y(20)) - ((-y(24))/y(23));
    residual(7) = (y(16)) - (y(3)*(1-params(3))+y(21));
    residual(8) = (y(14)) - (y(15)+y(21));
    residual(9) = (y(14)) - (T(2)*T(3));
    residual(10) = (y(22)) - (1);
    residual(11) = (y(20)) - (y(25));
    residual(12) = (y(19)) - (y(26));
    residual(13) = (log(y(18))) - (params(6)*log(y(5))+x(1));
end
