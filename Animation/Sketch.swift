import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var deltaX : Int
    var y : Int
    var deltaY : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, to: 500)
        y = random(from: 0, to: 500)
        
        // Set initial Speed
        deltaX = 1
        deltaY = 1
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change fill to white
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 10)
        
        // Draw a square
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)
        
        // Change position
        x += deltaX
        y += deltaY
        
        // Detect right edge
        if x == 500 || x == 0 {
            deltaX *= -1
        }
        // Detect left edge
        if y == 500 || y == 0 {
            deltaY *= -1
        }
        
        // Change the fill colour
        canvas.fillColor = Color.black
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
    }
    
}
