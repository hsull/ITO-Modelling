function out = transmittance(alpha, T_ITO, T_Au)
    alpha(alpha > 1) = NaN;
    out = (T_ITO .* (1-alpha)) + (T_Au .* (alpha))
end