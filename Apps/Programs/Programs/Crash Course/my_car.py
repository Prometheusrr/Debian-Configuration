#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jun 26 14:42:48 2021

@author: prometheus
"""

from car import Car

my_new_car = Car('audi', 'a4', 2019)
print(my_new_car.get_descripitve_name())

my_new_car.odometer_reading = 23
my_new_car.read_odometer()
