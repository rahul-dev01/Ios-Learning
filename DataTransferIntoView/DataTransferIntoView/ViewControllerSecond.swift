

import UIKit

class ViewControllerSecond: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var showResult: UILabel!
    
    @IBOutlet weak var viewInput: UITextField!
    
    @IBOutlet weak var inputMessage: UITextField!
    
    @IBAction func nextpage(_ sender: Any) {
        
        
        // this is used to navigate only between the views without packect or data transfer
        
//        if(viewInput.text! == "3rd"){
//            performSegue(withIdentifier: "2ndTo3rd", sender: nil)
//        }
//        else if (viewInput.text! == "4th"){
//            performSegue(withIdentifier: "2ndTo4th", sender: nil)
//        }
//        else {
//            showResult.text = "Wrong Input"
//            view.backgroundColor = UIColor.red
//        }
        
        
        // This is used to change the views with data
        
        if(viewInput.text! == "3rd"){
            performSegue(withIdentifier: "2ndTo3rd", sender: nil)
        }
        else if(viewInput.text! == "4th"){
            performSegue(withIdentifier: "2ndTo4th", sender: nil)
        }
        else {
            showResult.text = "Wrong Input"
            view.backgroundColor = UIColor.red
        }
    }
    
    
    // this is the step to send the message
//    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if( segue.identifier == "2ndTo3rd") {
            let detinationObject =  segue.destination as! ViewControllerThrid
            detinationObject.name = inputMessage.text!
        }
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
}
