//
//  ViewController.swift
//  swiftDemo
//
//  Created by han xu on 2017/12/16.
//  Copyright © 2017年 han xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myVariable = 42
        
        let myConstant = 42
        
        let a:Double = 40
        
        let label = "the width is"
        let width = 94
        let widthLabel = label + String(width)
        
        let appleWidth = "I have \(width + myConstant) apples."
        
        var shoppingList = ["catfish","water","tulips","blue paint"]
        shoppingList[1] = "ccc"
        
        var occupations = ["jj":"12",
                           "kk":"13"]
        occupations["hh"] = "12"
        
        let emptyArray = [String]()
        let emptyDictionary = [String:Float]()
        
        let indivi = [1,2,3]
        var teamScore = 0
        for score in indivi {
//            print(score)
        }
        
        if teamScore>0 {
            
        }
        
        var optionalStr:String? = "Hello"
//        print(optionalStr == nil)
        
        
        let vegetable = "red pepper"
        switch vegetable {
        case "ce":
            print(" ")
        
        case let x where x.hasSuffix("erre"):
            print(" ")
        default:
            print("  ")
        }
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        var largest = 0
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
//        print(largest)
        
        var firstForLoop = 0
        for i in 0 ... 4{
            firstForLoop += i
        }
        print(firstForLoop)
        
//        var string
        
        let string =  greet(name: "Bob", day: "Tuesday")
        print(string)
        
        let statistics = calculateStatistics(scores: [5,3,10])
        print(statistics.max)
        var numbers = [20,19,3,9]
        
        numbers.map({
            (number:Int) -> Int in
            let result = 3 * number
            return result
            }
        )
        
        
//        print(occupations)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func greet(name:String,day:String) -> String {
        return "Hello \(name),today is \(day)."
    }
    
    func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max{
                    max = score
                }else if score < min {
                    min = score
                }
                sum += score
            }
            return (min,max,sum)
}
    
    
    func sumOf(numbers:Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
    }
    
    
    func returnFifteen() -> Int {
        var y = 10
        func add(){
            y += 5
        }
        add()
        return y
    }
    
    func makeIncrementer() -> ((Int) ->Int) {
        func addOne(number:Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    
    func hasAnyMatches(list:[Int],condition:(Int) -> Bool) -> Bool {
        for item in list{
            if condition(item){
                return true
            }
            
        }
        return false
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

