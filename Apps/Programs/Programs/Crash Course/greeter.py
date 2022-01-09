#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 24 17:19:40 2021

@author: prometheus
"""

#name = input("Please enter your name: ")
#print(f"\nHello {name}!")
"""
prompt = "If you tell us who you are, we can personalize the message you see."
prompt += "\nWhat is your first name? "

name = input(prompt)
print(f"\nHello, {name}!")

"""


def get_formatted_name(first_name, last_name):
    """Return a full name, neat formatted."""
    full_name = f"{first_name} {last_name}"
    return full_name.title()

#This is an infinite loop!
while True:
    print("\nPlease tell me your name:")
    print("(enter 'q' at any time to quit)")
    
    f_name = input("First name: ")
    if f_name == 'q':
        break
    l_name = input("Last name: ")
    if l_name == 'q':
        break    
    formatted_name = get_formatted_name(f_name, l_name)
    print(f"\nHello, {formatted_name}!")