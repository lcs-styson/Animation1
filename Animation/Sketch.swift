import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var deltaX : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // Set initial Speed
        deltaX = 1
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change fill to white
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 10)
        
        // Draw a square
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)
        
        // Change position
        x += deltaX
        
        // Detect right edge
        if x == 500 || x == 0 {
            deltaX *= -1
        }
        
        
        // Change the fill colour
        canvas.fillColor = Color.blue
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        
    }
    
}
