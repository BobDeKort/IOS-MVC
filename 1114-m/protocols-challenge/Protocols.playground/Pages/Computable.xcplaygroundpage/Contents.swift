//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}

class Sum: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int {
        var result = 0
        for i in numbers{
            result += i
        }
        print(result)
        return result
    }
}

class Product: Computable {
    var numbers = [1,2,3,4,5,6,7,8,9]
    
    func compute() -> Int {
        var result = 1
        for i in numbers{
            result *= i
        }
        print(result)
        return result
    }
}

class CountCharacters: Computable {
    var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
    func compute() -> Int {
        let result = string.characters.count
        print(result)
        return result
    }
}

class Random: Computable {
    func compute() -> Int {
        let result = Int(arc4random())
        print(result)
        return result
    }
}

let sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

let arrayOfComputables: [Computable] = [sum, product, countCharacters, random]


for i in arrayOfComputables{
    i.compute()
}
/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */

