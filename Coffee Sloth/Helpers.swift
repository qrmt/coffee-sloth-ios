//
//  Helpers.swift
//  Coffee Sloth
//
//  Created by Olli Rauramo on 05/07/15.
//  Copyright © 2015 Ollis codes. All rights reserved.
//

import Foundation
import SpriteKit

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}

func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x / scalar, y: point.y / scalar)
}

#if !(arch(x86_64) || arch(arm64))
    func sqrt(a: CGFloat) -> CGFloat {
    return CGFloat(sqrtf(Float(a)))
    }
#endif

extension CGPoint {
    func length() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    
    func normalized() -> CGPoint {
        return self / length()
    }
    
}


func / (v: CGVector, scalar: CGFloat) -> CGVector {
    return CGVector(dx: v.dx / scalar, dy: v.dy / scalar)
}

func * (v: CGVector, scalar: CGFloat) -> CGVector {
    return CGVector(dx: v.dx * scalar, dy: v.dy * scalar)
}

func + (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx + right.dx, dy: left.dy + right.dy)
}

func - (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx - right.dx, dy: left.dy - right.dy)
}



extension CGVector {
    func length() -> CGFloat {
        return sqrt(dx * dx + dy * dy)
    }
    
    func normalized() -> CGVector {
        return self / length()
    }
}


func angleBetweenPoints(_ first: CGPoint, second: CGPoint) -> CGFloat {
    let delta = second - first
    return atan2(delta.y, delta.x)
}


struct Queue<T> {
    
    var items = [T]()
    
    mutating func enqueue(_ item: T) {
        items.append(item)
    }
    
    mutating func dequeue(_ item: T) {
        items.remove(at: 0)
    }
    
}


func randomCoefficient() -> CGFloat {
    return CGFloat(arc4random()) / CGFloat(UInt32.max)
}

func clamp(_ min: CGFloat, max: CGFloat, value: CGFloat) -> CGFloat {
    if( value > max ) {
        return max
    } else if( value < min ) {
        return min
    } else {
        return value
    }
}





