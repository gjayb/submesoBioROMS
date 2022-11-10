# submesoBioROMS
ROMS study of biological impact of submesoscale ocean activity changing with climate


Codes for the analysis performed for the following paper:
Submesoscale effects on changes to export production under global warming
Genevieve Jay Brett1,2, Daniel B Whitt3,4, Matthew C Long4, Frank O. Bryan4, Kate Feloy2, Kelvin J. Richards2

1Johns Hopkins University Applied Physics Laboratory 11100 Johns Hopkins Road, Laurel, MD 20723

2University of Hawai‘i Manoa 1680 East West Road, Honolulu HI 96822

3Ames Research Center, National Aeronautics and Space Administration, Moffett Field, CA

4Climate and Global Dynamics Laboratory, National Center for Atmospheric Research, Boulder, CO, 

## Figure numbers and their associated	code
1 (rms w)	plotrmsw.m, make_seasonal_fields.m

2 (N-density BC)	nitratepdenchoices.m

3,4 (N, production)	plotbioset.m, make_seasonal_fields.m 

5 (integrated production)	productionsetPub.m

6 (mean vertical fluxes)	plotmean100mFlux.m

7,8 (100m fluxes, varied ws or covaried ws and tau)	plotFlux100mVariedParameters.m

9,10 (100m fluxes, climate change)	plot100mWPclimatechangePub.m 

11, 12 (w’P’ and w’b’)	filtermethodcompare.m make_seasonal_fields.m


S1 (physical fields 2000s)	plotphysics2000.m

S2 (physical fields 2100s)	plotphysics2100.m

S3 (KEh spectra)	plot_spectra_depth_slice.m

S4 (KEv spectra)	plot_seasonal_spectra.m, make_seasonal_spectra.m 

S5, S6 (w’P’ and w’b’, different methods)	filtermethodcompare.m make_seasonal_fields.m

S7 (100m fluxes, different boundary conditions)	plot100mWPclimatechangePub.m
