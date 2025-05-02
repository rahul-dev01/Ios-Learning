import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    @IBOutlet weak var name_label: UILabel!
    
    @IBAction func changeColor_btn(_ sender: Any) {
        name_label.text! = "Hey , I am there"
    }

}
