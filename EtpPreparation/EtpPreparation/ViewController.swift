import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func colorControl(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            view.backgroundColor = .red
        }
        else if(sender.selectedSegmentIndex == 1){
            view.backgroundColor = .yellow
        }
        else if(sender.selectedSegmentIndex == 2){
            view.backgroundColor = .green
        }
        else{
            view.backgroundColor = .blue
        }
    }
    @IBOutlet weak var senderLbl: UILabel!
    
    
    @IBAction func senderInfo(_ sender: UISlider) {
        senderLbl.text = String(Int(sender.value))
    }
}

