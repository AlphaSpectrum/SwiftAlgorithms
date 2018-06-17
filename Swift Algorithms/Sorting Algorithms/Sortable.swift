//
//  Sortable.swift
//  Swift Algorithms
//
//  Created by Alan Campos on 6/1/18.
//  Copyright © 2018 Alan Campos. All rights reserved.
//

import Foundation

public protocol Sortable {
    func insertionSort<T>(_ elements: [T]) -> [T] where T : Comparable
}
