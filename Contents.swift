//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func getBodyMassIndex(weight:Double, height:Double) -> String{
    let bodyMassIndex = weight / pow(height, 2)

    let shortenedBMI = String(format: "%.2f", bodyMassIndex)

    var msg:String!

    if bodyMassIndex > 25{
        msg = "You are overweight buddy!"
    }else if bodyMassIndex >= 18.5 {
        msg = "Congrats! You are of normal weight!"
    }else{
        msg = "You need to eat more everyday because you are underweight!"
    }
    
    return "Your body Mass Index(BMI) is \(shortenedBMI) \(msg)"
}

func bmiCalcImperialUnits(weightInPounds:Double, heightInFeet:Double, remainderInches:Double){
    let weightInKg = weightInPounds * 0.45359237
    let totalInches = heightInFeet * 12 + remainderInches
    let heightInMeters = totalInches * 0.0254

    print(getBodyMassIndex(weight: weightInKg, height: heightInMeters))
}

print(getBodyMassIndex(weight: 72, height: 1.63))
bmiCalcImperialUnits(weightInPounds: 140, heightInFeet:5, remainderInches: 11)
