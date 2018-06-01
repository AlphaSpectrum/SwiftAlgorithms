//
//  InsertionSort.swift
//  Swift Algorithms
//
//  Created by Alan Campos on 6/1/18.
//  Copyright © 2018 Alan Campos. All rights reserved.
//

import Foundation

/**
 Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list. At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there. It repeats until no input elements remain.
 - Parameter elements: The array of elements to be sorted.
 - Returns: A new sorted array.
 */
public func insertionSort<T: Comparable>(_ elements: [T]) -> [T] {
    // If there is only one element in the sequence, then there is no need to sort.
    guard elements.count > 1 else { return elements }
    
    var elementsCopy = elements
    
    for j in 1..<elementsCopy.count {
        let key = elementsCopy[j]
        
        // Insert elements[j] into the the sorted sequence elementsCopy[1...j-1].
        var i = j - 1
        
        while i >= 0 && elementsCopy[i] > key {
            elementsCopy[i + 1] = elementsCopy[i]
            i -= 1
        }
        elementsCopy[i + 1] = key
    }
    
    return elementsCopy
}
