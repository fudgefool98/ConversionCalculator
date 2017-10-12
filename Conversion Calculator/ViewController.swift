//
//  ViewController.swift
//  Conversion Calculator
//
//  Created by Jordan Liebman on 10/3/17.
//  Copyright © 2017 Jordan Liebman. All rights reserved.
// test

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputField: UITextField!
    
    @IBOutlet weak var leftPicker: UIPickerView!
    @IBOutlet weak var rightPicker: UIPickerView!
   
    @IBOutlet weak var categorySeg: UISegmentedControl!
    
    var categoryToUnit =
    [
        "Volume": ["Deciliter", "Centiliter", "Milliliter", "Cubic Millimeter", "Cubic Yard", "Cubic Foot", "Cubic Inch"],
        "Length": ["Meter", "Decimeter", "Centimeter", "Millimeter", "Mile", "Yard", "Feet", "Inch"],
        "Speed": ["Meter per Second", "Mile per Hour", "Feet per Minute", "Feet per Second"],
        "Temp": ["Fahrenheit", "Kelvin"],
        "Weight":["Gram", "Milligram", "Pound", "Ounce"],
    ]
    
    func calculate() {
        if (inputField.text == "Input") {
            return;
        }
        
     var value: Double = inputField.text!.count > 0 ? Double(inputField.text!)! : 0
        
        let title: String = categorySeg.titleForSegment(at: categorySeg.selectedSegmentIndex)!
        switch (title) {
        case "Volume":
            //Deciliter to Milliliter 
            
            break
        case "Length":
            break
        case "Speed":
         break
        case "Temp":
            break
        case "Weight":
            break
       
        default:
            break
        }
        
        outputField.text = String(value)
    }
    
    @IBAction func onNumClick(_ sender: UIButton) {
       
        if(inputField.text == "Input"){
            
            inputField.text = ""
        }
        if (sender.titleLabel!.text != "." || !inputField.text!.contains(".")) {
        inputField.text! += sender.titleLabel!.text!;
            calculate()
        }
    }
   
    @IBAction func makePositive(_ sender: Any) {
        if (inputField.text!.starts(with: "-")) {
            inputField.text!.remove(at: inputField.text!.startIndex)
            calculate()
        }
    }
    
    @IBAction func makeNegative(_ sender: Any) {
        if (!inputField.text!.starts(with: "-")) {
            inputField.text = "-" + inputField.text!
            calculate()
        }
    }
    
    
    
    @IBAction func acButton(_ sender: Any) {
        if (inputField.text!.count > 0) {
            inputField.text!.remove(at: inputField.text!.index(before: inputField.text!.endIndex))
            calculate()
        }
    }
    
    @IBAction func segControl(_ sender: UISegmentedControl) {
        leftPicker.dataSource = self
        rightPicker.dataSource = self
        calculate()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let title: String = categorySeg.titleForSegment(at: categorySeg.selectedSegmentIndex)!
        if (categoryToUnit[title] != nil){
            return categoryToUnit[title]!.count;
        }
        else {
            return 0;
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let title: String = categorySeg.titleForSegment(at: categorySeg.selectedSegmentIndex)!
        if (categoryToUnit[title] != nil){
            return categoryToUnit[title]![row]
        }
        return "undefined"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftPicker.delegate = self
        leftPicker.dataSource = self
        rightPicker.delegate = self
        rightPicker.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

