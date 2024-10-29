//
//  TriangleView.swift
//  Geometric Figures
//
//  Created by Jack William Rathwell on 2024-10-28.
//

import SwiftUI

struct TriangleView: View {

    //MARK: STORED PROPERTIES
    @State var currentTriangle = Triangle(
        height: 50 ,
        a: 50,
        b: 50,
        c: 50
    )
    //MARK: COMPUTED PROPERTIES
    var body: some View {
        VStack {
            
            // Add an image
            
            //Label
            Text ("Dimensions")
            Text ("Side A is: \(currentTriangle.a.formatted())")
            
            //Sliders
            //IMPUT
            Slider(
                value: $currentTriangle.a,
                in: 1...100,
                step: 1.0
            
            )
            Text ("Side B is: \(currentTriangle.b.formatted())")
            
            Slider(
                value: $currentTriangle.b,
                in: 1...100,
                step: 1.0
            )
            Text ("Side C is : \(currentTriangle.c.formatted())")
            Slider(
                    value: $currentTriangle.c,
                    in: 1...100,
                    step: 1.0
                )
            Text ("Height is: \(currentTriangle.height.formatted())")
            
            Slider(
                value: $currentTriangle.height,
                    in: 1...100,
                    step: 1.0
                )
            //OUTPUT
            //Label (Show the Perimiter)
            Text ("The Perimeter is : \(currentTriangle.perimeter.formatted())")
            
            //Label (Show the Area)
            Text ("The Area is : \(currentTriangle.area.formatted())")
        }
    }
}

#Preview {
    TriangleView()
}
