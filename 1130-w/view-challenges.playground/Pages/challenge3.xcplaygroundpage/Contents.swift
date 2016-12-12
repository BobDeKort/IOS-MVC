import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 100)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .blue, .red]

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have the canvas's full `height` as well as a third of its `width`. Use the same colors as in the picture (they are already defined for you above in the `colors` array):

 ![Challenge 3](./challenge3.png "Challenge 3")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
// 1
//let width = canvas.frame.width / 3
//let height = canvas.frame.height
//
//
//let x2 = canvas.frame.width * 1/3
//let x3 = canvas.frame.width * 2/3
//
//let frame1 = CGRect(x: 0, y: 0, width: width, height: height)
//let frame2 = CGRect(x: x2, y: 0, width: width, height: height)
//let frame3 = CGRect(x: x3, y: 0, width: width, height: height)
//
//
//let view1 = UIView(frame: frame1)
//let view2 = UIView(frame: frame2)
//let view3 = UIView(frame: frame3)
//
//
//view1.backgroundColor = .green
//view2.backgroundColor = .blue
//view3.backgroundColor = .red
//
//
//canvas.addSubview(view1)
//canvas.addSubview(view2)
//canvas.addSubview(view3)

//2
let view1 = UIView(frame: CGRect.zero)
view1.translatesAutoresizingMaskIntoConstraints = false
view1.backgroundColor = .green
canvas.addSubview(view1)

NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true


let view2 = UIView(frame: CGRect.zero)
view2.translatesAutoresizingMaskIntoConstraints = false
view2.backgroundColor = .blue
canvas.addSubview(view2)

NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view2, attribute: .centerX, relatedBy: .equal, toItem: canvas, attribute: .centerX, multiplier: 1, constant: 1).isActive = true

let view3 = UIView(frame: CGRect.zero)
view3.translatesAutoresizingMaskIntoConstraints = false
view3.backgroundColor = .red
canvas.addSubview(view3)

NSLayoutConstraint(item: view3, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
NSLayoutConstraint(item: view3, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
NSLayoutConstraint(item: view3, attribute: .trailing, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 1).isActive = true
