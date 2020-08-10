# Definition of vectors

name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
# Create a data frame from the vectors
planets_df <-data.frame(name,type,diameter,rotation,rings)
planets_df
str(planets_df)

# This is a test. to see if I can pull the file from the website

# The following exercise shows us how we can select an element/column/row
# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]
# Print out data for Mars (entire fourth row)
planets_df[4,]
View(planets_df)


# The planets_df data frame from the previous exercise is pre-loaded
# Select first 5 values of diameter column
planets_df[1:5,"diameter"]


# Alternative method to select a column from the data frame
# Select the rings variable from planets_df
rings_vector <- planets_df$rings
# Print out rings_vector
rings_vector 

# name of the planets with rings
planets_df[rings_vector,"name"]
# data of the planets with rings
planets_df[rings_vector, ]


# using the subset() function to shorten the matrix/dataframe
# Select planets with diameter < 1
subset(planets_df, subset = diameter<1)



# order() is a function that gives you the ranked position of each element
a <- c(100, 10, 1000)
order(a)
# This means we can use the output of order(a) to reshuffle a
a[order(a)]


# Use order() to create positions
# this will create a vector named 'position' which will store the planets 
# in order of their diameters
positions <-  order(planets_df$diameter)
# Use positions to sort planets_df
planets_df[positions,]
