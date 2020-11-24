function plot_Reff_n(filePath, sheetName)
    value = readSputterITO_1(filePath, sheetName);
    h = value(1);
    d = value(2);
    l = value(3);
    R_ITO = value(4);
    value2 = readSputterITO_2(filePath, sheetName);
    nbars = value2(:, 1);
    Rsh = value2(:, 2);
    %Plot theoretical model based on constants
    n_theo = [1 : 1 : max(nbars) + 2];
    R_theo = R_eff(n_theo, d, l, h, R_ITO);
    
    hold on
    plot(n_theo, R_theo,  '-.b', 'MarkerSize', 20);
    %Plot observed values
    %plot(nbars, Rsh, '.','MarkerSize', 20);
    xlabel("Number of bars")
    ylabel("Sheet Resistance (\Omega \cdot Sq^-^1)")
    c = newline;
    title("Sheet Resistance against number of bars, l = " + l + "m," + c + "d = " + d + "m, R_I_T_O = "+R_ITO+" \Omega \cdot Sq^-^1, h= " + h+ "m");
    legend("Theoretical", "Observed values");
    str = strrep(filePath, '"C:\Users\hgsul\OneDrive\Documents\Y2, Semester 2\PHYS2922\SSP Solar\ITOModelling\data\', '');
    str = strrep(str, '.xlsx', '.fig');
    savefig(str);
    str = strrep(str, '.fig', '.bmp');
    saveas(gcf, str);


end