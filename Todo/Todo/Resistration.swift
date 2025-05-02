import UIKit

class Resistration: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBOutlet weak var userId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func resBtn(_ sender: Any) {
        let username = userId.text ?? ""
                let pass = password.text ?? ""

                if !username.isEmpty && !pass.isEmpty {
                   
                    UserDefaults.standard.set(username, forKey: "savedUsername")
                    UserDefaults.standard.set(pass, forKey: "savedPassword")

                    print("User Registered: \(username)")
                    
                    performSegue(withIdentifier: "resistToLog", sender: nil)

                    
                } else {
                    print("Please enter username and password")
                }
        
    }
}
