max_value = 1000

final_list = []

for x in range(max_value):
    if x%3 == 0:
        final_list.append(x)
    elif x%5==0:
        final_list.append(x)

answer = sum(final_list)

print(answer)
