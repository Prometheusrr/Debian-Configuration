cars = ['bmw','audi','toyota','subaru']
##sorting list alphabetically order cars with (reverse=True)
##cars.sort(reverse=True)

##print("Here is the original list:")
##print(cars)

##print("\nHere is the sorted list:")
##print(sorted(cars))

##print("\nHere is the original list again:")
##print(cars)

#this will change the list in reverse permanently
##print(cars)

##cars.reverse()
##print(cars)
#print(len(cars))

cars = ['audi', 'bmw', 'subaru', 'toyota']
for car in cars:
    if car == 'bmw':
        print(car.upper())
    else:
        print(car.title())
        
