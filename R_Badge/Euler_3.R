#What is the largest prime factor of the number 600851475143? 

#a method to check if a number is prime

is_prime2 <- function(n){
# factor and its pair converge at the sqrt of the number
  value <- floor(sqrt(n))+1
#check to see if it is a factor by comparing checking if divisible by anything
  for(i in 2:value){
    if(n %% i == 0){
      return(FALSE)
    }
  }
  return(TRUE)
}
factors <- numeric() 

number <- 600851475143
max_value <- floor(sqrt(number))+1

#similar to above, a factor converges with its "pair" at its square root,
# now we check to see if its "pair" is a prime  

for(i in 2:max_value){
  if(number %% i == 0){
    if (is_prime2(i)){
      pair <- number/i
      factors <- append(factors, i)
      if(is_prime2(pair)){
        factors <- append(factors, pair)
      }
    }
  }
    
}


max(factors)


max(factors)
