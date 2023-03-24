//  Created by Lucas Real Dias on 21/03/23.

import Foundation
import SwiftUI

struct RGBColor {
    
    static func rgbColor(r: Int, g: Int, b: Int) -> Color {
        let red = Double(r) / 255
        let green = Double(g) / 255
        let blue = Double(b) / 255
        
        return Color(red: red, green: green, blue: blue)
    }

    static func rgbColor(r: String, g: String, b: String) -> Color {
        let red = Int(r) ?? 0
        let green = Int(g) ?? 0
        let blue = Int(b) ?? 0

        return rgbColor(r: red, g: green, b: blue)
    }
    
}


