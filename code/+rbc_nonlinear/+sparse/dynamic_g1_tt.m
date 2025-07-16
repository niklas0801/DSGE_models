function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 6
    T = [T; NaN(6 - size(T, 1), 1)];
end
T(4) = getPowerDeriv(y(3),params(1),1);
T(5) = y(18)*T(4);
T(6) = getPowerDeriv(y(17),1-params(1),1);
end
