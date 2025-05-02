import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    

    @IBOutlet weak var userId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func submitBtn(_ sender: Any) {
        let username = userId.text ?? ""
        let password = password.text ?? ""

            let savedUsername = UserDefaults.standard.string(forKey: "savedUsername")
            let savedPassword = UserDefaults.standard.string(forKey: "savedPassword")

            if username == savedUsername && password == savedPassword {
                view.backgroundColor = UIColor.green
                print("Login successful")
            } else {
                print("Invalid credentials")
                print("login failed")
            }
    }
}

