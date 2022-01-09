#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jun 26 00:50:58 2021

@author: prometheus
"""

class Dog:
    """A simple attempt to model a dog."""
    def __init__(self, name, age):
        """Intinalize name and age attributes.""" 
        self.name = name
        self.age = age
        
    def sit(self):
        """Simulate a dog sitting in reponse to a command."""
        print(f"{self.name} is now sitting.")
        
    def roll_over(self):
        """Simulate rolling over in response to a command."""
        print(f"{self.name} rolled over!")
    
my_dog = Dog('Lucky', 8)
your_dog = Dog('Toby', 7)

print(f"My dog's name is {my_dog.name}.")
print(f"My dog is {my_dog.age} years old.")
my_dog.sit()
my_dog.roll_over()

print(f"\nYour dog's name is {your_dog.name}.")
print(f"Your dog is {your_dog.age} years old.")
your_dog.sit()
your_dog.roll_over()
