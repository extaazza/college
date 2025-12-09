a = float(input("Введите первое число: "))
b = float(input("Введите второе число: "))
c = float(input("Введите третье число: "))
count = 0
if a > 0:
    count += 1
if b > 0:
    count += 1
if c > 0:
    count += 1
print("Количество положительных чисел: ", count)