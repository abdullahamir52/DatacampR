v1 <- c(10, 15, -25, -35, 85)
v2 <- c(-5, 52, -85, 97, 25)

v3 <- c(v1, v2)

m1 <- matrix(v3, nrow =2, byrow = TRUE)
m1

col_name_vector <- c("d1", "d2", "d3", "d4", "d5")
row_name_vector <- c("vector 1", "vector 2")

rownames(m1) <- row_name_vector
colnames(m1) <- col_name_vector

m1

rm(list=ls())
# ---------------------------------

v1 <- c(10, 15, -25, -35, 85)
v2 <- c(-5, 52, -85, 97, 25)

v3 <- c(v1, v2)

m1 <- matrix(v3, nrow =2, byrow = TRUE,
             dimnames = list(c("vector 1", "vector 2"), 
                             c("d1", "d2", "d3", "d4", "d5")))

Total <- rowSums(m1)

total_m1 <- cbind(m1, Total)

total_m1

# ------------------------------------------------



survey_vector <- c("M", "F", "F", "M", "M")

factor_survey_vector <- factor(survey_vector)
factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

factor_survey_vector <- factor(factor_survey_vector, ordered =TRUE,
                               levels = c("Female", "Male"))
factor_survey_vector
# -----------------------------------------------------

speed_vector <- c("medium", "slow", "slow", "medium", "fast")
speed_factor <- factor(c("m", "s","s","m","f"))
speed_factor
levels(speed_factor) <- c("fast", "medium", "slow")
speed_factor
factor_speed_vector <- factor(speed_factor, ordered = TRUE, 
                              levels = c("slow", "medium", "fast"))
factor_speed_vector