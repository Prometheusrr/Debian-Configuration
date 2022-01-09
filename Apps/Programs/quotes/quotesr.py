import random
import itertools

quotes = open("text.txt", "r")
quote = quotes.readlines()

i = random.randint(0,5)
f = i

#print(f)
print(quote[f])



quotes.close()