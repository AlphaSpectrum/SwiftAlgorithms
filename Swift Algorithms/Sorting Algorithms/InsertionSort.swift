//
//  InsertionSort.swift
//  Swift Algorithms
//
//  Created by Alan Campos on 6/1/18.
//  Copyright © 2018 Alan Campos. All rights reserved.
//

import Foundation

extension Sortable {
    /**
     Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
     
     - Parameter elements: The array of elements to be sorted.
     - Returns: A new sorted array.
     
     - Complexity: O(n^2) where n is the number of elements in the array.
     */
    public func insertionSort<T>(_ elements: [T]) -> [T] where T : Comparable {
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
}

