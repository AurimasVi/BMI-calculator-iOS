import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var sliderHeight: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let height = round(100 * sender.value) / 100
        heightValueLabel.text = "\(height)m"
        
    }
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightValueLabel.text = "\(weight)Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        let bmi = round(100 * (weight / pow(height, 2))) / 100
        bmiValue = String(format: "%.1f", bmi)
        
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
            
        }
        
        
    }
    
}
