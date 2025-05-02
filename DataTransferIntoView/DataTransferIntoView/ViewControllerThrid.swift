import UIKit
class ViewControllerThrid: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        lblWelcome.text = "Welcome \(name)"
        lblWelcome.text = lblWelcome.text! + " " + name
        
    }
    
    
    var name:String = ""
    
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBAction func backButton3(_ sender: Any) {
        dismiss(animated: true)
    }
}
