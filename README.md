# Problem statement

A delivery company IParcel delivers packages to certain locations every day. Below is a sample set of the lat and lngs. 
• 1 parcel per location for the sake of simplicity 

• There are n number of delivery boys riding motorcycles available

The purpose of this problem is to come up with an efficient path for each of the 25 drivers from a central distribution point (11.552931,104.933636).

Things we expect 
• Code on a git repo

• Efficiency in running the problem

• Any visualisation that you can think of

• Ideas on how you plan to scale this if the number of locations increase (more warehouses and distribution points)

. Also how this can be translated to engineering infrastructure if need be.

• Problem statement is purposefully at a very high level. 

If you have any new ideas we didn’t think of, would be a bonus.

# solution (Route Optimization)

## Goal
The goal is to find the shortest tour that visits each Location in a given list exactly once and then returns to the starting Location.

. libraries Used

    The traveling salesperson problem (TSP)
    
    Maps
    
    sp (spatial location)
    
 . Definition
 
  Formally, the TSP can be stated as: The distances between n locations are stored in a distance matrix D with elementsd(i, j) where i, j= 1. . . nand the diagonal elementsd(i, i) = 0. A tour can be represented by a cyclic permutationπof{1,2, . . . , n} whereπ(i)represents the location that follows location in the tour. The traveling salesperson problem is then to find a permutationπthat minimizesn
              ∑i=1d(i, π(i))
which is called the length of the tour.   

###steps follwed

step 1: set options and libraries

step 2: Read source data from locations file

step 3: Check first few rows of data

step 4: Clean dataset, filter invalid records

step 5: Check cleaned dataset

step 6: Function to calculate distance (Euclidean Distance) in kilometers between two points.

step 7: Define Central Distribution Point location

step 8: Calculate distance from Central Distribution Point to each delivery location

step 9: Check last few records

step 10: Check summary of dataset

step 11: box and whisker plot for reviewing distribution

step 12: TSP solver methods

step 13: Tour comparison for 50 US cities

step 14: dotchart

step 15: concorde_path, need to use the execution files
         Concorde.chm 
         Concorde.exe 
         QSConcorde.dll
         
step 16: Tour comparison for 313 US cities

step 17: dotchart

step 18: mytour

step 19: path

step 20: tail path

step 21: plot_path

step 22: Vehicle Stop coordinates


         
         
