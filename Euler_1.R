#Euler problem number 1, find the sum of all the multiples of 3 and 5 below 1000


numbers <- 1:1000

#output list
final_list <- numeric()


# iterate through the numbers 1-1000, check if they are a multiple of 3 or 5 and add
# them to the output list
for (y in numbers){
  if(y %% 3 == 0){
    final_list <- append(final_list, y)
  } else if(y %% 5 == 0){
    final_list <- append(final_list, y)
  }
}

sum_of_multiples <- sum(final_list)

print(sum_of_multiples)