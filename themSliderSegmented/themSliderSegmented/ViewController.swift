import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        age_lable.isHidden = true
        home_image.isHidden = true
    }
    
    
    @IBOutlet weak var darktheme: UILabel!
    
    @IBOutlet weak var age_holder: UILabel!
    
    @IBOutlet weak var age_lable: UILabel!
    
    
    // Toggle for the dark theme and light theme
    @IBAction func themToggle(_ sender: UISwitch) {
//        if (sender as AnyObject).isOn {   // if sender : Any
        if sender.isOn{                      // if sender is Switch
            view.backgroundColor = .black
            darktheme.textColor = .white
            age_holder.textColor = .white
            age_lable.textColor = .white
        }
        else {
            view.backgroundColor = #colorLiteral(red: 0.6248946746, green: 0.9437685919, blue: 1, alpha: 1)
            darktheme.textColor = .black
            age_holder.textColor = .black
            age_lable.textColor = .black
           
        }
    }
    
    
    @IBAction func age_slider(_ sender: UISlider) {
        age_lable.isHidden = false
        let result = Int(sender.value)
        age_lable.text = String(result)
    }
    
//    @IBAction func age_slider(_ sender: Any) {
//        let result = Int((sender as! UISlider).value);
//        age_lable.text = "\(result)"
//    }
    
    
    
    @IBAction func changeSementedControl(_ sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//           case 0:
//               view.backgroundColor = .red
//           case 1:
//               view.backgroundColor = .green
//           case 2:
//               view.backgroundColor = .blue
//           default:
//               break
//           }
        
        if (sender.selectedSegmentIndex == 0){
            view.backgroundColor = .systemPink
        }
        else if (sender.selectedSegmentIndex == 1){
            view.backgroundColor = .green
        }
        else{
            view.backgroundColor = .systemCyan
        }
    }
    
    @IBOutlet weak var home_image: UIImageView!
    
    @IBOutlet weak var next_btn: UIButton!
    
    @IBAction func show_image_btn(_ sender: Any) {
        home_image.isHidden = false
    }
    
    
    
}

