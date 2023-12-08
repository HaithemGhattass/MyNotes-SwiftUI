//
//  CGImage + PixelColor.swift
//  MyNotes
//
//  Created by haithem ghattas on 8/12/2023.
//

import CoreGraphics
import UIKit

extension CGImage {
    
    func pixel(x: Int, y: Int) -> (r: Int, g: Int, b: Int)? {
        guard let pixelData = dataProvider?.data,
            let data = CFDataGetBytePtr(pixelData) else { return nil }

        let pixelInfo = ((width  * y) + x ) * 4

        let red = Int(data[pixelInfo])
        let green = Int(data[(pixelInfo + 1)])
        let blue = Int(data[pixelInfo + 2])

        return (red, green, blue)
    }

}
