
import UIKit

class CellDataViewController: UIViewController {
    var cellValue : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        datalbl.text = cellValue
        
       
    }
    
    @IBOutlet weak var datalbl: UILabel!
    
    
}
