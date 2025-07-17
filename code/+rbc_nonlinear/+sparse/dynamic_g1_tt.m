function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = rbc_nonlinear.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(7) = params(4)*getPowerDeriv(y(11),(-params(6)),1);
T(8) = params(2)*params(4)*getPowerDeriv(y(20),(-params(6)),1);
T(9) = getPowerDeriv(y(3),params(1),1);
T(10) = y(14)*T(9);
T(11) = (-((-params(5))*(-(getPowerDeriv(1-y(13),(-params(7)),1)))));
T(12) = getPowerDeriv(y(13),1-params(1),1);
end
