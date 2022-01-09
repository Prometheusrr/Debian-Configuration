#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jun 24 17:16:48 2021

@author: prometheus
"""

#message = input("Tell me something, and I will repeat it back to you! ")
#print(message)

prompt = "\nTell me something, and I will repeat it back to you:"
prompt += "\nEnter 'quit' to end the program. "

message = ""
#while message != 'quit':
#    message = input(prompt)
    #print(f"\n{message}")
    
#    if message != 'quit':
#        print(message)
    
active = True
while active:
    message = input(prompt)
    
    if message == 'quit':
        active = False
    else:
        print(message)