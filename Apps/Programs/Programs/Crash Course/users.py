#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jun 23 01:18:05 2021

@author: prometheus
"""

user_0 ={
        'username': 'efermi',
        'first': 'enrico',
        'last': 'fermi',
        }
for key, value in user_0.items():
    print(f"\nKey: {key}")
    print(f"Value: {value.title()}")
    