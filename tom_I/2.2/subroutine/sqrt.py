#import random
#rows = random.randint(1,5)
#colomns = random.randint(1,5)
#print(rows)
#print(colomns)
a=8
b=18
sim=" "
for x in range(a):
    if x==0 or x==a-1 :
        sim="*"
        for y in range(b):
            if y==b-1:
                print(sim, "\t")
            else :
                print(sim, end='')
    else :
        sim=" "
        print("*", end='')
        for y in range(b-2):
            print(sim, end='')
        print("*", "\t")
