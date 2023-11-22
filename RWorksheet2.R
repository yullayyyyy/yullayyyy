seque5to5 <- -5:5
seque5to5
# the output was a sequence starting from
# -5 up to 5

# 1.b
x <- 1:7
x
# the value of x is a sequence starting from 
# 1 up to 7

# 2.a
seq(1,3, by=0.2)
# the output was a sequence starting from 1 and ends with 3
# and the third argument specifies that in every number,
# you need to jump by 0.2

# 3
workerAge <- list(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                  
                  22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                  24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                  18)

workerAge

# 3.a 
thirdElement <- workerAge[3]
thirdElement

# 3.b
secondAndFourth <- workerAge[c(3,4)]
secondAndFourth

# 3.c
allButFourthAndTwelfth <- workerAge[c(-4,-12)] 
allButFourthAndTwelfth

#4
x <- c("first"=3, "second"=0, "third"=9)
x
names(x)

#4.a
x
subset <- x[c("first", "third")]
# the output of the code is a vector
# containing the elements with the names
# "first" and "third" with values 3 and 9

# 5
new_seq <- seq(-3,2)
new_seq

new_seq[2] <- 0 
new_seq

# the output is a new vector with the 2nd element
# changed to zero

# 6.a
fuel <- data.frame(
  month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  price_per_liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  purchase_quantity = c(25, 30, 40, 50, 10, 45)
)

fuel

# 6.b
w_mean <- weighted.mean(fuel$price_per_liter, fuel$purchase_quantity)
w_mean

# 7.b
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data
# The results shows the built in datasets of rivers in north america and 
# shows that length,sum,mean,median,var,sd,min,max of rivers

# 8.a
powerRanking <- c(1,2,3,4,5,6,7,8,9,10,
                  11,12,13,14,15,16,17,18,19,20,
                  21,22,23,24,25)

celebrityName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey",
                   
                   "U2", "Tiger Woods", "Steven Spielberg",
                   "Howard Stern", "50 Cent", "Cast of the Sopranos",
                   "Dan Brown", "Bruce Springsteen", "Donald Trump",
                   "Muhammad Ali", "Paul McCartney", "George Lucas",
                   "Elton John", "David Letterman", "Phil Mickelson",
                   "J.K Rowling", "Bradd Pitt", "Peter Jackson",
                   "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

celeb_pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55,
               44, 55, 40, 244, 34, 40, 47, 75, 25, 39, 35, 32, 40, 31)


celebrity <- data.frame(
  power_ranking = powerRanking,
  celebrity_name = celebrityName,
  pay = celeb_pay
)

View(celebrity)

# 8.b
celebrity$power_ranking[celebrity$celebrity_name == "J.K Rowling"] <- 15
celebrity$pay[celebrity$celebrity_name == "J.K Rowling"] <- 90
celebrity

View(celebrity)

# 8.c

write.csv(celebrity, "/cloud/project/PowerRanking.csv")

PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking

# 8.d

new_rows <- celebrity[10:20,]
save(new_rows, file="Ranks.RData")
View(new_rows)

# 8.e
# selects rows 10 to 20 from the original data frame, 
# saves the selected rows as Ranks.RData, and then prints the selected rows as the output.

# 9.a
# install.packages("readxl")
library(readxl)
excel_file <- read_excel("hotels-vienna.xlsx")
excel_file
View(excel_file)

# 9.b
dim_file <- dim(excel_file)
dim_file

# the output is 428 rows and 24 columns

# 9.c
colnames(excel_file)
select_cols <- excel_file[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
View(select_cols)

# 9.d
save(select_cols, file="new.RData")
View(select_cols)

# 9.e
load("new.RData")
select_cols

firstSix <- head(select_cols)
lastSix <- tail(select_cols)

# 10.a
veggies <- list("Broccoli", "Cabbage", "Tomato", "Eggplant", "Peas",
                "Corn", "Mushroom", "Lettuce", "Potato", "Sweet Potato")