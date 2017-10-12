//
//  model.swift
//  Conversion Calculator
//
//  Created by Brian Riddle on 10/3/17.
//  Copyright © 2017 Jordan Liebman. All rights reserved.
//

import Foundation




//we need an input and output
//input will have characters appended to a sting.
//output comes from model functions

//we need to have proper decimal functionality so that it isn't 10.0.1 or 900.. etc and all decimal's without leading ints will be displayed with a 0.123 (leading zero)


// we need a function for each conversion. the controler will manage under which circumstances each function is called.

//start questions
// when should we use optionals?
// do we need to use optionals?

//when should we use computed properties?

// will we be sending a string into a to int function?? what is that called

// what are some questions you expect i need to ask?

//what are the funcitonal requirements

//HOW THE heck... DO I USE GITHUB ON XCODE... HAVING SOME ISSUES





// calculations start
//
//-length
//


//Kilometer (km) to meter (m)
func getKmToM(input: String)->String{
    let output = Double(input) ?? 0.0 * 1000
    return String(describing: output)
}
//  output = input*1000

//Kilometer(km) to decimeter (dm)
func getKmToDm(input: String)->String{
    let output = Double(input) ?? 0.0 * 10000
    return String(describing: output)
}
// output = input*100

//Kilometer (km) to centimeter (cm)
func getKmToCm(input: String)->String{
    let output = Double(input) ?? 0.0 * 100000
    return String(describing: output)
}
// output = input*100000

//Kilometer (km) to millimeter (mm)
func getKmToMm(input: String)->String{
    let output = Double(input) ?? 0.0 * 1000000
    return String(describing: output)
}
// output = input * 1000000

//Kilometer (km) to mile (mile)
func getKmToMile(input: String)->String{
    let output = Double(input) ?? 0.0 * 0.621371
    return String(describing: output)
}
// output = input * 0.621371

//Kilometer (km) to yard (yard)
func getKmToYard(input: String)->String{
    let output = Double(input) ?? 0.0 * 1093.61
    return String(describing: output)
}
// output = input * 1093.61

//Kilometer (km) to feet (ft)
func getKmToFt(input: String)->String{
    let output = Double(input) ?? 0.0 * 3280.84
    return String(describing: output)
}
// output = input * 3280.84

//Kilometer (km) to inch (in)
func getKmToIn(input: String)->String{
    let output = Double(input) ?? 0.0 * 39370.1
    return String(describing: output)
}
// output = input * 39370.1



//-speed
//
//Kilometer per Hour (km/h) to Meter per second (m/s)
func getKmphToMps(input: String)->String{
    let output = Double(input) ?? 0.0 * 0.277778
    return String(describing: output)
}
// output = input *0.277778

//Kilometer per Hour (km/h) to Mile per Hour (mph)
func getKmphToMph(input: String)->String{
    let output = Double(input) ?? 0.0 * 0.621371
    return String(describing: output)
}
// output = input *0.621371

//Kilometer per Hour (km/h) to Feet per Second (ft/s)
func getKmphToFps(input: String)->String{
    let output = Double(input) ?? 0.0 * 0.911344
    return String(describing: output)
}
// output = input *0.911344


//-volume
//
//Cubic Meter(m3) to Deciliter (dl)
//
func getm3Todl(input: String)->String{
    let output = Double(input) ?? 0.0 * 10000
    return String(describing: output)
}

//output = input * 10000
//Cubic Meter (m3) to Centiliter (cl)
func getm3Tocl(input: String)->String{
    let output = Double(input) ?? 0.0 * 100000
    return String(describing: output)
}
//output = input * 100000
//
//Cubic Meter (m3) to Milliliter (cc)
func getm3Tocc(input: String)->String{
    let output = Double(input) ?? 0.0 * 1000000
    return String(describing: output)
}
//output = input * 1000000
//
//Cubic Meter (m3) to Cubic Millimeter (mm3)
func getm3Tomm3(input: String)->String{
    let output = Double(input) ?? 0.0 * 1000000000
    return String(describing: output)
}

//output = input * 1000000000

//Cubic Meter (m3) to Cubic Yard (yd3)
func getm3Toyd3(input: String)->String{
    let output = Double(input) ?? 0.0 * 1.30795
    return String(describing: output)
}

//output = input * 1.30795

//Cubic Meter (m3) to Cubic Foot (ft3)
func getm3Toft3(input: String)->String{
    let output = Double(input) ?? 0.0 * 35.3147
    return String(describing: output)
}

//output input * 35.3147

//Cubic Meter (m3) to Cubic Inch (in3)
func getm3Toin3(input: String)->String{
    let output = Double(input) ?? 0.0 * 61023.7
    return String(describing: output)
}

//ouput = input * 61023.7

//-temp
//
//Celsius © to Fahrenheit (F)
func getCToF(input: String)->String{
    let output = Double(input) ?? 0.0 * (9/5) + 32
    return String(describing: output)
}
// input*(9/5) + 32

//Celsius © to Kelvin (K)
func getCToK(input: String)->String{
    let output = Double(input) ?? 0.0 + 273.16
    return String(describing: output)
}
// input + 273.15


//-weight
//
//Kilogram (kg) to Gram (gr)
// output = input * 1000

//Kilogram (kg) to Milligram (mg)
// output = input * 1000000

//Kilogram (kg) to Pound (lb)
func getKgToLb(input: String)->String{
    let output = Double(input) ?? 0.0 * 2.20462
    return String(describing: output)
}
// output = input * 2.20462

//Kilogram (kg) to Ounce (oz)
func getKgToOz(input: String)->String{
    let output = Double(input) ?? 0.0 * 35.2739199982575
    return String(describing: output)
}
// output = input * 35.2739199982575
//
//

