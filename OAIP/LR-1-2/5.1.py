def enough_honey(N, M, K):
    total_honey = N * M
    if total_honey >= K:
        return "YES"
    else:
        return "NO"
N = int(input("Введите количество банок (N): "))
M = int(input("Введите объем мёда в каждой банке (M): "))
K = int(input("Введите необходимый объем мёда (K): "))
result = enough_honey(N, M, K)
print(result)