X = float(input('Введите заработок за 38 часов работы (в рублях): '))
A = float(input('Введите общее количество отработанных часов: '))
if A > 38:
    regular = 38
    overtime = A - 38
else:
    regular = A
    overtime = 0

total_summa = (regular / 38) * X + overtime * (X / 38) * 1.5
print('Общая сумма заработка: {:.2f} рублей')
