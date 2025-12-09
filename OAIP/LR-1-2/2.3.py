x1 = int(input("Введите трехзначное число: "))
x1_str = str(x1)
x2_str = x1_str [::-1]
x2 = int(x2_str)
rz = x1 - x2
print(f"Разность между {x1} и {x2} равна {rz}")


