//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func getBodyMassIndex(weight:Double, height:Double) -> Double{
    let bodyMassIndex = weight / pow(height, 2)
    
    if bodyMassIndex > 25{
        print("You are overweight buddy!")
    }else if bodyMassIndex >= 18.5 {
        print("Congrats! You are of normal weight!")
    }else{
        print("You need to eat more everyday because you are underweight!")
    }
    
    return bodyMassIndex
}

getBodyMassIndex(weight: 66, height: 1.63)
