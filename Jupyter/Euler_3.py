#what is the largest prime factor of the number 600851475143

def is_prime(n):
    value = math.floor(math.sqrt(n))+1

    for i in range(2,value):
        if(n % i == 0):
            return False
    return True


factors = []

big_number = 600851475143
max_value = math.floor(math.sqrt(big_number))+1

for x in range(2, max_value):
    if big_number % x == 0:
        if is_prime(x):
            pair = big_number / x
            factors.append(x)
            if(is_prime(pair)):
                factors.append(pair)





answer = max(factors)

print(answer)
