import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        y = 250
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change fill to white
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 0)
        canvas.drawShapesWithBorders = false
        
        // Draw a square
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)
        
        // Change position
        x += 1
        y -= 1
        
        
        // Change the fill colour
        canvas.fillColor = Color.blue
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(at: Point(x: x, y: x), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: y, y: x), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: y, y: y), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
    }
    
}
