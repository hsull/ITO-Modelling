# ITO-Modelling

## /data/
Contains data for transmittance and sheet resistance calculations.
## R\_eff.m
Syntax: `R_eff(n_vals, d, l, h, R_ITO)`

Where:
- **n_vals** is a vector of the number of bars used.
- **d** is the horizontal width (parallel with the ITO sheet) of the wire
- **l** is the length of the wire (in the direction that spans the full ITO sheet), and thus is equivalent to the length of the sheet.
- **h** is the 'thickness' of the wire, (in direction perpendicular to the ITO sheet).
- **R_ITO** is the resistance of the ITO sample without bars.

R\_eff\_h.m and R\_eff\_d.m are equivalent functions designed to allow passing in of vectors of h and d respectively.
 
Plot\_Reff\_n.m is designed as a helper function, to automatically load, calculate and plot modelled vs experimental sheet resistance data. Excel sheets should be formatted as seen in /data/
##transmittance.m
Syntax : `transmittance(alpha, T_ITO, T_Au)`

Where:
- **alpha** is the ratio of the surface area of the sample covered by gold to the total surface area of the sample.
- **T_ITO** is the transmittance of the ITO sample without bars
- **T_Au** is the transmittance of the gold sample at the given thickness
