n = int(input('Введите число N: '))
for i in range(1, n + 1):
    if i % 2 != 0:
        print(f'Квадрат числа {i} равен {i * i}')
