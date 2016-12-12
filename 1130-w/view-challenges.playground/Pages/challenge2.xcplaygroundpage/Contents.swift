
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
// 1
//let margin1 = 20
//let x1 = canvas.frame.width * 0/3 + 1 // let x1 = 1
//let y1 = canvas.frame.width * 0/3 + 1 // let y1 = 1
//
//let x2 = canvas.frame.width * 1/3
//let y2 = canvas.frame.width * 1/3
//
//let x3 = canvas.frame.width * 2/3
//let y3 = canvas.frame.width * 2/3
//
//let width = canvas.frame.size.width * 0.33
//let height = canvas.frame.size.width * 0.33
//let frame1 = CGRect(x: Int(x1), y: Int(y1), width: Int(width), height: Int(height))
//let frame2 = CGRect(x: Int(x2), y: Int(y2), width: Int(width), height: Int(height))
//let frame3 = CGRect(x: Int(x3), y: Int(y3), width: Int(width), height: Int(height))
//
//let view1 = UIView(frame: frame1)
//let view2 = UIView(frame: frame2)
//let view3 = UIView(frame: frame3)
//
//view1.backgroundColor = .red
//view2.backgroundColor = .red
//view3.backgroundColor = .red
//canvas.addSubview(view1)
//canvas.addSubview(view2)
//canvas.addSubview(view3)

//// 2
let view1 = UIView(frame: CGRect.zero)
view1.translatesAutoresizingMaskIntoConstraints = false
view1.backgroundColor = .red
canvas.addSubview(view1)

NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
//NSLayoutConstraint(item: view1, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 1).isActive = true
//NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: 0).isActive = true


let view2 = UIView(frame: CGRect.zero)
view2.translatesAutoresizingMaskIntoConstraints = false
view2.backgroundColor = .blue

canvas.addSubview(view2)

NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view2, attribute: .centerY, relatedBy: .equal, toItem: canvas, attribute: .centerY, multiplier: 1, constant: 1).isActive = true
NSLayoutConstraint(item: view2, attribute: .centerX, relatedBy: .equal, toItem: canvas, attribute: .centerX, multiplier: 1, constant: 0).isActive = true

let view3 = UIView(frame: CGRect.zero)
view3.translatesAutoresizingMaskIntoConstraints = false
view3.backgroundColor = .green
canvas.addSubview(view3)

NSLayoutConstraint(item: view3, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view3, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view3, attribute: .trailing, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 1).isActive = true
NSLayoutConstraint(item: view3, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
