function out = R_eff_d(n, d_vals, l, h, R_ITO)
    outs = zeros(1,length(d_vals));
    for i = 1 : length(d_vals)
        d = d_vals(i);
        R = 1/4.53236 * R_ITO; % Average unidirectional von der Pauw R
        % Calculate R_a
        R_a = ((l-n*d)/l)*R + (n.*((l./(R*d))+((l.*h)./(2.44e-8*d))).^(-1));
        % Calculate R_b
        R_Au_wire_b = (l*2.44 * 10^(-8))./(d .* h);
        R_b = (1./R + n./R_Au_wire_b).^(-1);
        % Solve the sheet resistance equation
        syms R_s
        outs(i) = vpasolve((exp(-pi*(R_a./R_s)) + exp(-pi.*(R_b./R_s)) == 1), R_s);
    end
  out = outs;
end