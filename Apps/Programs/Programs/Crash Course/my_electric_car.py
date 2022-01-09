#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jun 26 14:52:58 2021

@author: prometheus
"""

from car import ElectricCar

my_telsa = ElectricCar('telsa', 'model s', 2019)

print(my_telsa.get_descripitve_name())
my_telsa.battery.describe_battery()
my_telsa.battery.get_range()