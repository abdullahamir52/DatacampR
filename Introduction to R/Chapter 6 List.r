# Lists, why would you need them?

# Congratulations! At this point in the course you are already familiar with:

# Vectors (one dimensional array): can hold numeric, character or logical values. 
# The elements in a vector all have the same data type.

# Matrices (two dimensional array): can hold numeric, character or logical values. 
# The elements in a matrix all have the same data type.

# Data frames (two-dimensional objects): can hold numeric, character or logical
# values. Within a column all elements have the same data type, but different 
# columns can be of different data type.

# Pretty sweet for an R newbie, right? ;-)
# A list in R allows you to gather a variety of objects under one name 
# (that is, the name of the list) in an ordered way. These objects can be 
# matrices, vectors, data frames, even other lists, etc. It is not even 
# required that these objects are related to each other in any way.



# creating a list()

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]
# Construct list with these different elements:
my_list <- list(my_vector,my_matrix,my_df)
my_list


# Naming a list
# Before you make the list use it like this
# > my_list <- list(name1 = your_comp1, name2 = your_comp2)
# Adapt list() call to give the components names
my_list <- list(vec=my_vector, mat=my_matrix, df=my_df)
# After you have made the list, name the list like this
# > my_list <- list(your_comp1, your_comp2)
# > names(my_list) <- c("name1", "name2")
# Print out my_list
my_list



# I will now create a vector (mov), factor (act), data.frame (rev) and ....
# ....with all these, I will finally create a list
# vector
mov <- ("The Shining") 
# factor
act <- c("Jack Nicholson", "Shelley Duvall", "Danny Lloyd", 
         "Scatman Crothers", "Barry Nelson")
#data.frame
sco <- c(4.5,4.0,5.0)
srs <- c("IMDb1", "IMDb2", "IMDb3")
com <- c("Best Horror Film I Have Ever Seen", 
        "A truly brilliant and scary film from Stanley Kubrick",
        "A masterpiece of psychological horror")
rev <- data.frame(sco,srs,com)
# Now I will change the column name of the data.frame
col_names<- c("Scores", "Sources", "Comments")
colnames(rev)<- col_names
# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)
shining_list


# Selecting elements from a list
# To select a single part (dataframe or matrix or vector or factor)
shining_list[[3]]
# To select an element from the frame or matrix
shining_list[[2]][2]
# To select a single part using the name of that part
shining_list[["reviews"]]
# Selecting a part by using the $ sign and the name
shining_list$actors
# Selecting a part by using the $ sign and vector name
shining_list$mov


movie_title <- ("The Departed")
movie_actors <- c ("Leonardo DiCaprio","Matt Damon","Jack Nicholson",
                   "Mark Wahlberg", "Vera Farmiga","Martin Sheen")
# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", 
              "One of the best movies", "Fascinating plot")
# Save the average of the scores vector as avg_review  
avg_review  <- mean(scores)
# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores,comments)
# Create and print out a list, called departed_list
departed_list <- list(Movie = movie_title, Actors = movie_actors,
                      Reviews = reviews_df, Average_Review= avg_review)
departed_list
