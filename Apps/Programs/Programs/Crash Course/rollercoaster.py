#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 24 17:32:20 2021

@author: prometheus
"""

height = input("How tall are you, in inches? ")
height = int(height)

if height >= 48:
    print("\nYou're tall enought to ride!")
else:
    print("\nYou'll be able to ride when you're a little older.")
    