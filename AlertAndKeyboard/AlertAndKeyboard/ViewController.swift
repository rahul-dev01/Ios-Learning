import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBOutlet weak var input_one: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   // This for textField
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    @IBAction func alert_btn(_ sender: Any) {
        
        let yesAction = { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor(displayP3Red: 0.5, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        
        let alrt =  UIAlertController(title: "Alert", message: "Do You want to continue ", preferredStyle: UIAlertController.Style.alert);
        alrt.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: yesAction));
            alrt.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: nil));
        present(alrt, animated: true)

        
//        var alert =  UIAlertController(title: "Alert", message: "Do You want to continue  ", preferredStyle: UIAlertController.Style.actionSheet);
//            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: nil));
//            alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: nil));
//        present(alert, animated: true)
    }
}

