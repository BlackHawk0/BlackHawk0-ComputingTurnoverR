#Setting the current working directory

setwd("/home/mogul/Videos/R")

#Getting and printing the current working directory

print(getwd())

#Reading data file into R environment

data <- read.csv("DataExercise3")
data


#Creating a sales_unit subset

sales_unit <- subset(data, unit == "sales")

#Creating a plant subset

plants_unit <- subset(data, unit == "plant")



#Computing monthly turnover for sales
#step 1 creating a total_sep vector

total_sep_vec <- c(sales_unit$total_sep)

#Step 2 Creating a ave_emp vector
ave_emp_vec <- as.vector(sales_unit$ave_emp)

#Step 3 Calculating the monthly turnover 
final_vec <- ((total_sep_vec/ave_emp_vec) *100)
final_vec
rown <- c("Jan","Feb", "March","April", "May", "June", "july",
          "Aug", "Sep", "Oct", "Nov", "Dec")

#Step 4 Creating a matrix to display the monthly turnover for the sales subset.
final_matr <- matrix(final_vec, nrow = 12, byrow = TRUE, dimnames = list(rown))
final_matr



#Computing annual turnover for sales

#Computing total sep_total for sales
sep_ave <- sales_unit["total_sep"]
sp_totals <- sum(sep_ave)

#Computing total ave_emp for sales
emp_ave <- sales_unit["ave_emp"]
emp_ave_totals <- sum(emp_ave)

ann_sales_turnover <- ((sp_totals/emp_ave_totals) * 100)
ann_sales_turnover


#Computing monthly turnover for plant

#Step 1Creating a vector for the total_sep for plant

total_sep_plant <- as.vector(plants_unit$total_sep)

#Step 2 Creating a vector for the ave_emp

ave_emp_plant <- as.vector(plants_unit$ave_emp)

# Step 3 calculating the monthly turnover
turnover_vec <- ((total_sep_plant/ave_emp_plant)*100)

rown <-c("Jan","Feb", "March","April", "May", "June", "july",
                "Aug", "Sep", "Oct", "Nov", "Dec")
plant_turnover_matr <- matrix(turnover_vec, nrow = 12, byrow = TRUE, 
                                 dimnames = list(rown))
plant_turnover_matr


#Computing annual turonover for plant subset
#Computing total sep_total for plant

sep_ave_plant <- plants_unit["total_sep"]
sp_totals_pant <- sum(sep_ave_plant)

#Computing total ave_emp for plant
emp_ave_plant <- plants_unit["ave_emp"]
emp_ave_totals_plant <- sum(emp_ave_plant)

ann_sales_turnover_plant <- ((sp_totals_pant/emp_ave_totals_plant) * 100)
ann_sales_turnover_plant


#Using a function to calculate the monthly turnover for sales subset

f <- function(d){
  
  f1 <- as.data.frame((d[4]/d[5]) * 100)
  rownames(f1) <- rown
  return(f1)
}

f(sales_unit)


#Using a function to calculate the monthly turnover for plant subset

fe <- function(d){
  
  fe1 <- as.data.frame((d[4]/d[5]) * 100)
  rownames(fe1) <- rown
  return(fe1)
}

fe(plants_unit)
