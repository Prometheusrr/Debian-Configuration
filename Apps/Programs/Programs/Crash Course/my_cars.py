#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jun 26 14:58:15 2021

@author: prometheus
"""


from car import Car
from electric_car import ElectricCar as EC

#from car import *
#import car

my_bettle = Car('volkswagen', 'beetle', 2019)
print(my_bettle.get_descriptive_name())

my_telsa = EC('telsa', 'roadster', 2019)
print(my_telsa.get_descriptive_name())