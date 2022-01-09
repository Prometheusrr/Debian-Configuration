#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jun 21 23:54:19 2021

@author: prometheus
"""

#requested_toppings = ['mushrooms', 'extra cheese', 'green peppers']
#if requested_topping != 'anachovies':
#    print("Hold the anchovies!")

#if 'mushrooms' in requested_toppings:
#    print("Adding Mushrooms")
#elif 'pepperoni' in requested_toppings:
#    print("Adding Pepperoni")
#elif 'extra cheese' in requested_toppings:
#    print("Adding Extra Cheese")
    
#print("\nFinished making your pizza!")

#for requested_topping in requested_toppings:
#    if requested_topping == 'green peppers':
#        print("Sorry, we are out of green peppers right now.")
#    else:
#        print(f"Adding {requested_topping}")

#print("\nFinished making your pizza!")

available_toppings = ['mushrooms', 'extra cheese', 'green peppers',
                      'pepperoni', 'pineapple', 'extra cheese']

requested_toppings = ['mushrooms', 'extra cheese', 'french fries']

#if requested_toppings:
for requested_topping in requested_toppings:
    if requested_topping in available_toppings:    
        print(f"Adding {requested_topping}.")
    else:
        print(f"Sorry, we are out of {requested_topping} right now.")
print("\nFinished making your pizza!")
#else:
#    print("Are you sure you want a plain pizza?")