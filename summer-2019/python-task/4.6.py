def computepay(h, r):
    if h <= 40:
        return h * r
    else:
        return 40 * r + (h - 40) * r * 1.5


hrs = input("Enter Hours:")
hrs = float(hrs)
rat = float(input("Enter Rates:"))

p = computepay(hrs, rat)
print(p)
