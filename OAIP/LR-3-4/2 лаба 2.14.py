A = float(input('Введите начальный вклад A (в рублях): '))
B = float(input('Введите сумму B (в рублях): '))
years = 0
while A <= B:
    A *= 1.03
    years += 1
print(f'Вклад станет больше B через {years} лет.')
