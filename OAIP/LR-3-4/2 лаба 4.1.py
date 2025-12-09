n = int(input())
besttime = float('inf')
bestswimmer = ""
for i in range(n):
    bestswimmer = input().strip()
    currenttime = float(input().strip())
    if currenttime < besttime:
        besttime = currenttime
        bestswimmer = bestswimmer
print(f"{bestswimmer} {besttime:.2f}")