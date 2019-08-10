text = "X-DSPAM-Confidence:    0.8475"
index = text.find('0')

res = float(text[index:])
print(res)