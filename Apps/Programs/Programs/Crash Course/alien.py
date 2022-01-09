#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jun 22 23:52:39 2021

@author: prometheus
"""

#alien_O = {'color': 'green', 'points': 5}
#print(alien_O)

#del alien_O['points']
#print(alien_O)

#print(f"The alien is {alien_O['color']}.")
#print(alien_O['color'])
#print(alien_O['points'])


#alien_O['y_position'] = 25
#alien_O['x_position'] = 0
#alien_O["color"] = 'yellew'
#print(f"The alien is now {alien_O['color']}.")

#new_points = alien_O['points']
#print(f"You just earned {new_points} points!")


#alien_O = {'x_position': 0, 'y_position': 25, 'speed': 'fast'}
#print(f"Original position: {alien_O['x_position']}")

# Move the alien to the right.
# Determine how far to move the alien based on its current speed
#if alien_O['speed'] == 'slow':
#    x_increment = 1
#elif alien_O['speed'] == 'medium':
#    x_increment = 2
#else:
    # THis must be a fast alien
#    x_increment = 3

#alien_O['x_position'] = alien_O['x_position'] + x_increment

#print(f"New position: {alien_O['x_position']}")

#alien_0 = {'color': 'green', 'points': 5}
#alien_1 = {'color': 'yellow', 'points': 10}
#alien_2 = {'color': 'red', 'points': 15}

#aliens = [alien_0, alien_1, alien_2]

#for alien in aliens:
#    print(alien)
    
# Make an empty list for list for storing alien
aliens = []

# Make 30 green aliens.
for alien_number in range(30):
    new_alien = {'color': 'green', 'points': 5, 'speed': 'slow'}
    aliens.append(new_alien)

for alien in aliens[0:3]:
    if alien['color'] == 'green':
        alien['color'] = 'yellow'
        alien['speed'] = 'medium'
        alien['points'] = 10
    elif alien['color'] == 'yellow':
        alien['color'] = 'red'
        alien['speed'] = 'fast'
        alien['point'] = '15'
        
# Show the first 5 aliens.
for alien in aliens[:5]:
    print(alien)
print("...")

# Show how many aliens have been created.
print(f"Total number of aliens: {len(aliens)}")