//
//  ViewController.swift
//  Conversion Calculator
//
//  Created by Jordan Liebman on 10/3/17.
//  Copyright © 2017 Jordan Liebman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func onNumClick(_ sender: UIButton) {
       
        if(inputField.text == "Input"){
            
            inputField.text = ""
        }
        if (sender.titleLabel!.text != "." || !inputField.text!.contains(".")) {
        inputField.text! += sender.titleLabel!.text!;
        }
    }
   
    @IBAction func makePositive(_ sender: Any) {
        if (inputField.text!.starts(with: "-")) {
            inputField.text!.remove(at: inputField.text!.startIndex)
        }
    }
    
    @IBAction func makeNegative(_ sender: Any) {
        if (!inputField.text!.starts(with: "-")) {
            inputField.text = "-" + inputField.text!
        }
    }
    
    
    
    @IBAction func acButton(_ sender: Any) {
        if (inputField.text!.count > 0) {
            inputField.text!.remove(at: inputField.text!.index(before: inputField.text!.endIndex))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

