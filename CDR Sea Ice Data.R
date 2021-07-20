library(ncdf4) # package for netcdf manipulation
library(raster) # package for raster manipulation
library(rgdal) # package for geospatial analysis
library(ggplot2) # package for plotting

filename <- "D:/Sam's Stuff/School/ESS/Sea Ice/Data/seaice_conc_monthly_nh_197811_202012_v04r00.nc" #Sam

nc_data <- nc_open(filename)

lon <- ncvar_get(nc_data, "longitude")
lat <- ncvar_get(nc_data, "latitude", verbose = F)
t <- ncvar_get(nc_data, "time")
sic <- ncvar_get(nc_data, 'cdr_seaice_conc')