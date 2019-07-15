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

# solution

## Goal
The goal is to find the shortest tour that visits each Location in a given list exactly once and then returns to the starting Location.

. libraries Used

    The traveling salesperson problem (TSP)
    
    Maps
    
 . Definition
 
  Formally, the TSP can be stated as: The distances between n locations are stored in a distance matrix D with elementsd(i, j) where i, j= 1. . . nand the diagonal elementsd(i, i) = 0. A tour can be represented by a cyclic permutationπof{1,2, . . . , n} whereπ(i)represents the location that follows location in the tour. The traveling salesperson problem is then to find a permutationπthat minimizesn
              ∑i=1d(i, π(i))
which is called the length of the tour.   


OverviewTSP/ATSPTOURdistmatrixTSPLIBfilewrite_TSPLIB()as.dist()TSP()/ATSP()as.TSP()/as.ATSP()integer (vector)as.integer()cut_tour()TSP()as.TSP()as.matrix()solve_TSP()TOUR()as.TOUR
