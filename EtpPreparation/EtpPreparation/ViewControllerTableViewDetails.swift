

import UIKit

class ViewControllerTableViewDetails: UIViewController {
    
    var cellValue : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showCityLBL.text = cellValue
    }
    
    @IBOutlet weak var showCityLBL: UILabel!
    

}
