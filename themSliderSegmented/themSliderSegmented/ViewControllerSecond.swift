import UIKit

class ViewControllerSecond: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        image_collection.isHidden = true
    }
    
    var imageSet : [UIImage] = [UIImage(named: "img1")!, UIImage(named: "img2")!, UIImage(named: "img3")! , UIImage(named: "img4")! ,    UIImage(named: "img5")! ,    UIImage(named: "img6")!   ,    UIImage(named: "img7")!]
    
    
    @IBOutlet weak var image_collection: UIImageView!
    
    @IBAction func ImageAnimation(_ sender: Any) {
//        image_collection.isHidden = false
        image_collection.animationImages = imageSet
        image_collection.animationDuration = 8
        image_collection.startAnimating()
        
        
    }
    
    @IBAction func stop_animation(_ sender: Any) {
        image_collection.stopAnimating()
    }
    
}
