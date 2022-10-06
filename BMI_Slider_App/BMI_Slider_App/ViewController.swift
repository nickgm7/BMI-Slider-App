//
//  ViewController.swift
//  BMI_Slider_App
//
//  Created by Nick Meyer on 1/21/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var h: UILabel!
    @IBOutlet weak var w: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var bmi: UILabel!
    
    var height: Float = 60;
    var weight: Float = 100;
    
    @IBAction func height_slider(_ sender: UISlider, forEvent event: UIEvent) {
        h.text = String(Int(sender.value));
        height = sender.value;
        bmi_calculator(height: height, weight: weight);
    }
    
    @IBAction func weight_slider(_ sender: UISlider, forEvent event: UIEvent) {
        w.text = String(Int(sender.value));
        weight = sender.value;
        bmi_calculator(height: height, weight: weight);
    }
    
    
    func bmi_calculator(height: Float, weight: Float)
    {
        var bmi_calc = weight / (height * height);
        bmi_calc = bmi_calc * 703;
        bmi.text = String(bmi_calc);
        fitness_level(c: Double(bmi_calc));
    }
    
    func fitness_level(c: Double){
        var msg: String = "";
        if(c < 18){
            msg = "You are underweight";
            message.text = msg;
            message.textColor = UIColor.blue;
        }
        if(c >= 18 && c < 25){
            msg = "You are normal";
            message.text = msg;
            message.textColor = UIColor.green;
        }
        if(c >= 25 && c < 30){
            msg = "You are pre-obese";
            message.text = msg;
            message.textColor = UIColor.purple;
        }
        if(c > 30){
            msg = "You are obese";
            message.text = msg;
            message.textColor = UIColor.red;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

