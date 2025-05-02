

import UIKit

class ViewControllerMultipleSectionData: UIViewController {
    var cellValue : String!

    override func viewDidLoad() {
        super.viewDidLoad()

        multDataShow.text = cellValue
    }
    
    @IBOutlet weak var multDataShow: UILabel!
    

}
