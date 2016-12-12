import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//1
//let width = canvas.frame.width / 3
//let height = canvas.frame.height / 3
//
//let x1 = 0
//let x2 = canvas.frame.width * 1/3
//let x3 = canvas.frame.width * 2/3
//
//let y1 = 0
//let y2 = canvas.frame.height * 1/3
//let y3 = canvas.frame.height * 2/3
//
//
//let frame1 = CGRect(x: 0, y: 0, width: width, height: height)
//let frame2 = CGRect(x: x2, y: 0, width: width, height: height)
//let frame3 = CGRect(x: x3, y: 0, width: width, height: height)
//
//let frame4 = CGRect(x: 0, y: y2, width: width, height: height)
//let frame5 = CGRect(x: x2, y: y2, width: width, height: height)
//let frame6 = CGRect(x: x3, y: y2, width: width, height: height)
//
//let frame7 = CGRect(x: 0, y: y3, width: width, height: height)
//let frame8 = CGRect(x: x2, y: y3, width: width, height: height)
//let frame9 = CGRect(x: x3, y: y3, width: width, height: height)
//
//
//let view1 = UIView(frame: frame1)
//let view2 = UIView(frame: frame2)
//let view3 = UIView(frame: frame3)
//let view4 = UIView(frame: frame4)
//let view5 = UIView(frame: frame5)
//let view6 = UIView(frame: frame6)
//let view7 = UIView(frame: frame7)
//let view8 = UIView(frame: frame8)
//let view9 = UIView(frame: frame9)
//
//view1.backgroundColor = .green
//view2.backgroundColor = .gray
//view3.backgroundColor = .purple
//view4.backgroundColor = .yellow
//view5.backgroundColor = .red
//view6.backgroundColor = .orange
//view7.backgroundColor = .lightGray
//view8.backgroundColor = .white
//view9.backgroundColor = .blue
//
//canvas.addSubview(view1)
//canvas.addSubview(view2)
//canvas.addSubview(view3)
//canvas.addSubview(view4)
//canvas.addSubview(view5)
//canvas.addSubview(view6)
//canvas.addSubview(view7)
//canvas.addSubview(view8)
//canvas.addSubview(view9)

//2
var amountOfCells = 9
var viewArray: [UIView] = []
let view1 = UIView(frame: CGRect.zero)
view1.backgroundColor = .green
viewArray.append(view1)

let view2 = UIView(frame: CGRect.zero)
view2.backgroundColor = .gray
viewArray.append(view2)

let view3 = UIView(frame: CGRect.zero)
view3.backgroundColor = .purple
viewArray.append(view3)

let view4 = UIView(frame: CGRect.zero)
view4.backgroundColor = .yellow
viewArray.append(view4)

let view5 = UIView(frame: CGRect.zero)
view5.backgroundColor = .red
viewArray.append(view5)

let view6 = UIView(frame: CGRect.zero)
view6.backgroundColor = .orange
viewArray.append(view6)

let view7 = UIView(frame: CGRect.zero)
view7.backgroundColor = .lightGray
viewArray.append(view7)

let view8 = UIView(frame: CGRect.zero)
view8.backgroundColor = .white
viewArray.append(view8)

let view9 = UIView(frame: CGRect.zero)
view9.backgroundColor = .blue
viewArray.append(view9)

for view in viewArray{
    canvas.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1/3, constant: 1).isActive = true
    NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 1).isActive = true
}

var firstLine = [view1, view2, view3]
var secondLine = [view4, view5, view6]
var thirdLine = [view7, view8, view9]

var firstColumn = [view1, view4, view7]
var secondColumn = [view2, view5, view8]
var thirdColumn = [view3, view6, view9]

for view in secondLine{
    NSLayoutConstraint(item: view, attribute: .centerY, relatedBy: .equal, toItem: canvas, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
}
for view in thirdLine {
    NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: 1).isActive = true
}

for view in secondColumn {
    NSLayoutConstraint(item: view, attribute: .centerX, relatedBy: .equal, toItem: canvas, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
}

for view in thirdColumn{
    NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 1).isActive = true
}




//let view1 = UIView(frame: CGRect.zero)
//view1.translatesAutoresizingMaskIntoConstraints = false
//view1.backgroundColor = .green
//canvas.addSubview(view1)
//
//NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
//NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
//
//
//let view2 = UIView(frame: CGRect.zero)
//view2.translatesAutoresizingMaskIntoConstraints = false
//view2.backgroundColor = .blue
//canvas.addSubview(view2)
//
//NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
//NSLayoutConstraint(item: view2, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
//NSLayoutConstraint(item: view2, attribute: .centerX, relatedBy: .equal, toItem: canvas, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
//
//let view3 = UIView(frame: CGRect.zero)
//view3.translatesAutoresizingMaskIntoConstraints = false
//view3.backgroundColor = .red
//canvas.addSubview(view3)
//
//NSLayoutConstraint(item: view3, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: 0).isActive = true
//NSLayoutConstraint(item: view3, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
//NSLayoutConstraint(item: view3, attribute: .trailing, relatedBy: .equal, toItem: canvas, attribute: .trailing, multiplier: 1, constant: 1).isActive = true
