function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 13
    T = [T; NaN(13 - size(T, 1), 1)];
end
T(13) = params(4)*getPowerDeriv(y(11),(-params(6)),2);
end
