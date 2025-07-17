function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 6
    T = [T; NaN(6 - size(T, 1), 1)];
end
T(1) = params(4)*y(11)^(-params(6));
T(2) = y(3)^params(1);
T(3) = y(14)*T(2);
T(4) = y(13)^(1-params(1));
T(5) = params(4)*y(20)^(-params(6))*params(2);
T(6) = (-((-params(5))*(1-y(13))^(-params(7))));
end
