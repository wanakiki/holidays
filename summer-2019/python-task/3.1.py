hrs = input("Enter Hours:")
h = float(hrs)

rate = float(input("Enter Rates:"))
if h > 40:
    res = 40 * rate + (h - 40) * rate * 1.5
else:
    res = rate * 40
print(res)