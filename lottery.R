# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

# Small edit! from class 1!

num_of_coin_flips <- 10
Number_of_tickets <- 100
prob_head <- 0.1


lottery_ticket <- array(0,num_of_coin_flips)
for (i in 1:num_of_coin_flips){
  lottery_ticket[i] <- if (runif(1) < prob_head)
  paste("head")
  else paste("tail")
}

for (j in 1:Number_of_tickets){
  lottery_ticket <- array(0,num_of_coin_flips)
  for (i in 1:num_of_coin_flips){
    lottery_ticket[i] <- if (runif(1) < prob_head)
      paste("head")
    else paste("tail")
  }
  print(lottery_ticket)
}

?rbinom
rbinom(10, 1, 0.1)


num_of_coin_flips <- 10
Number_of_tickets <- 100
prob_head <- 0.1


for (i in 1:Number_of_tickets){
  a <- rbinom(num_of_coin_flips, 1, prob_head)
  print(a)
}
