//
//  DrawingGestureRecognizer.swift
//  MyNotes
//
//  Created by haithem ghattas on 8/12/2023.
//

import UIKit

class DrawingGestureRecognizer: UIPanGestureRecognizer {
    
    typealias touchesResponse = (touches: Set<UITouch>, event: UIEvent, velocity: CGPoint)
        
    var touchesBeganHandler: ((touchesResponse) -> Void)?
    var touchesMovedHandler: ((touchesResponse) -> Void)?
    var touchesEndedHandler: ((touchesResponse) -> Void)?
    var touchesCancelledHandler: ((touchesResponse) -> Void)?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        let response: touchesResponse = (touches, event, velocity(in: view))
        touchesBeganHandler?(response)
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        let response: touchesResponse = (touches, event, velocity(in: view))
        touchesMovedHandler?(response)
        super.touchesMoved(touches, with: event)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        let response: touchesResponse = (touches, event, velocity(in: view))
        touchesEndedHandler?(response)
        super.touchesEnded(touches, with: event)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent) {
        let response: touchesResponse = (touches, event, velocity(in: view))
        touchesCancelledHandler?(response)
        super.touchesCancelled(touches, with: event)
    }
}
