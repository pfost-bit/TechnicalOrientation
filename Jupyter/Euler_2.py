even_fib = []

max_value = 4000000

a = 0
b = 1

while( a < max_value):
    if a%2 ==0:
        even_fib.append(a)
    tmp = a
    a = tmp + b
    b = tmp
answer = sum(even_fib)
print(answer)
