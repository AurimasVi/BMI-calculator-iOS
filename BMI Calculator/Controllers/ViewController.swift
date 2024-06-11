//
//  ViewController.swift
//  BMI Calculator

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var sliderHeight: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        var height = round(100 * sender.value) / 100
        heightValueLabel.text = "\(height)m"
  
    }
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        var weight = Int(sender.value)
        weightValueLabel.text = "\(weight)Kg"
       
    }
    
    
}

