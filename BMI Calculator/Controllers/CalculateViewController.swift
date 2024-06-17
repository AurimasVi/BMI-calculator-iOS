import UIKit

class CalculateViewController: UIViewController {
    
var calculatorBrain = CalculatorBrain()
    
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
            
        }
        
        
    }
    
}
