//
//  main.swift
//  Swift Algorithms
//
//  Created by Alan Campos on 6/1/18.
//  Copyright © 2018 Alan Campos. All rights reserved.
//

import Foundation

var A = [9, 5, 5, -98, 4, -2, 0, 2, 1, 4, 5, 6, 7, 33, 45, -457, 22, 45]
var B = ["alex", "juel", "tina", "natan", "lara", "claire", "sev", "seth"]
let aSorted = insertionSort(A)
let bSorted = insertionSort(B)

print(aSorted)
print(bSorted)
