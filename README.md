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


## Installation of R on Mac
To Install R
Open an internet browser and go to www.r-project.org.
Click the "download R" link in the middle of the page under "Getting Started."
Select a CRAN location (a mirror site) and click the corresponding link.
Click on the "Download R for (Mac) OS X" link at the top of the page.
Click on the file containing the latest version of R under "Files."
Save the .pkg file, double-click it to open, and follow the installation instructions.
Now that R is installed, you need to download and install RStudio.
To Install RStudio
Go to www.rstudio.com and click on the "Download RStudio" button.
Click on "Download RStudio Desktop."
Click on the version recommended for your system, or the latest Mac version, save the .dmg file on your computer, double-click it to open, and then drag and drop it to your applications folder.
To Install the SDSFoundations Package
Download SDSFoundations to your desktop (make sure it has the ".tgz" extension).
Open RStudio.
Click on the Packages tab in the bottom right window.
Click "Install."
Select install from "Package Archive File."
Select the SDSFoundations package file from your desktop.
Click install. You are done! You can now delete the SDSpackage file from your desktop.


## steps follwed

step 1: libraries

step 2: Read source data from locations file

step 3: filter invalid records

step 4: Euclidean Distance in kilometers between two points.

step 5: Define Central Distribution Point location

step 6: Calculate distance from Central Distribution Point to each delivery location

step 7: Check summary of dataset

step 8: box and whisker plot for reviewing distribution

step 9: TSP solver methods

step 10: Tour comparison for 50 US cities

step 11: dotchart

step 12: concorde_path, need to use the execution files
         . Concorde.chm 
         . Concorde.exe 
         . QSConcorde.dll
         
step 13: Tour comparison for 313 US cities

step 14: dotchart

step 15: mytour

step 16: path

step 17: tail path

step 18: plot_path

step 19: Vehicle Stop coordinates


         
         
