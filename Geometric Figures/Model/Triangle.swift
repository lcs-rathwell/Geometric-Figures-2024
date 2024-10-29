//
//  Triangle.swift
//  Geometric Figures
//
//  Created by Jack William Rathwell on 2024-10-28.
//

import Foundation
// Define the protocol
protocol Describable {
    var description: String { get }
}

// Define the structure, adopting the new protocol
struct Triangle: Describable {
    
    //PROCESS
    //MARK: Stored Properties
    var height: Double
    var a: Double
    var b: Double
    var c: Double
    
    //MARK: Computed Properties
    var perimeter: Double {
        return a + b + c
    }
    
    var area: Double {
        return (a+b) * height / 2
    }
    
    var description: String {
        return "The area of the triangle is \(area) and the perimeter is \(perimeter)"
    }
    
    
    
}
