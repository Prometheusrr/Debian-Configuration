#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jun 25 01:33:50 2021

@author: prometheus
"""

def get_formatted_name(first_name, last_name, middle_name=''):
    """Return a full name, neat formatted."""
    if middle_name:
        full_name = f"{first_name} {middle_name} {last_name}"
    else:
        full_name = f"{first_name} {last_name}"
    return full_name.title()

musician = get_formatted_name('Toby', 'Bocanerga')
print(musician)

musician = get_formatted_name('Toby', 'Bocanerga', 'tobias')
print(musician)