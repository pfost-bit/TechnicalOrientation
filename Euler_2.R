#Find the sum of the even-valued terms of the fibonocci sequence less than 4000000

even_fib <- numeric()
max_value <- 4000000


a <- 0
b <- 1

while(a < max_value){
  if(a%%2 == 0){
    even_fib <- append(even_fib, a)
  }
  
  tmp <- a
  a <- tmp + b
  b<- tmp
}

answer <- sum(even_fib)

print(answer)