#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 24 02:17:40 2021

@author: prometheus
"""
"""
# Store information about a pizza being ordered
pizza = {
        'crust': 'thick',
        'toppings': ['mushrooms', 'extra cheese'],
        }

# Summarize the order.
print(f"You ordered a {pizza['crust']}-crust pizza "
        "with the following toppings:")

for topping in pizza['toppings']:
    print(f"\t{topping}")
"""
"""
def make_pizza(*toppings):
    #Print the list of toppings that have been requested.
    print(toppings)
    
make_pizza('pepperoni')
make_pizza('mushrooms', 'green peppers', 'extra cheese')
"""

def make_pizza(size, *toppings):
    """Summmarize the pizza we are about to make."""
    print(f"\nMaking a {size}-inch pizza with the following topping:")
    for topping in toppings:
        print(f"- {topping}")

#make_pizza(16, 'pepperoni')
#make_pizza(12,'mushroom', 'green pepper', 'extra cheese')