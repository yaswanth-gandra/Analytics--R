# set options and libraries
library("TSP")
library("maps")
library("sp")
library("maptools")
data("USCA50")
data("USCA312")
data("USCA312_map")
setwd(".\\")
options(digits=9)

# Read source data from locations.csv file
loc.raw <- read.csv(file = "locations.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
str(loc.raw)


# Check first few rows of data
head(loc.raw)

# Clean dataset, filter invalid records
loc.nan <- loc.raw[(is.na(loc.raw$lon)), ]
loc.nan

# Check cleaned dataset
loc.new <- loc.raw[(!is.na(loc.raw$lon)), ]
loc.new$lat <- as.numeric(loc.new$lat)
str(loc.new)

# Function to calculate distance (Euclidean Distance) in kilometers between two points.
# Reference : https://conservationecology.wordpress.com/2013/06/30/distance-between-two-points-in-r/
earth.dist <- function (long1, lat1, long2, lat2){
rad <- pi/180
a1 <- lat1 * rad
a2 <- long1 * rad
b1 <- lat2 * rad
b2 <- long2 * rad
dlon <- b2 - a2
dlat <- b1 - a1
a <- (sin(dlat/2))^2 + cos(a1) * cos(b1) * (sin(dlon/2))^2
c <- 2 * atan2(sqrt(a), sqrt(1 - a))
R <- 6378.145
d <- R * c
return(d)}

# Define Central Distribution Point location
loc.cdp <- data.frame(lat = 11.552931, lon = 104.933636)
loc.cdp

# Calculate distance from Central Distribution Point to each delivery location
loc.new$km <- earth.dist(loc.cdp$lon, loc.cdp$lat, loc.new$lon, loc.new$lat)
head(loc.new)

# Check last few records
tail(loc.new)

# Check summary of dataset
summary(loc.new)

# box and whisker plot for reviewing distribution
boxplot(loc.new[(loc.new$km < 5),], use.cols = TRUE, horizontal = TRUE)

# TSP solver methods
methods <- c("nearest_insertion", "farthest_insertion", "cheapest_insertion", "arbitrary_insertion", "nn", "repetitive_nn", "two_opt")

# Tour comparison for 50 US cities.
tours <- sapply(methods, FUN = function(m) solve_TSP(USCA50, method = m),simplify = FALSE)
tours

dotchart(sort(c(sapply(tours, tour_length), optimal = 15000)), xlab = "tour length", xlim = c(10000, 25000))

data("USCA312")
tsp <- insert_dummy(USCA312, label = "cut")
tsp

concorde_path("C:\\Concorde")

# Tour comparison for 313 US cities.
tours <- sapply(methods, FUN = function(m) solve_TSP(tsp, method = m),simplify = FALSE)
tours

dotchart(sort(c(sapply(tours, tour_length), optimal = 35000)), xlab = "tour length", xlim = c(30000, 50000))
