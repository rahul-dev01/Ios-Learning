import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    var coord : CLLocation!

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }

    @IBOutlet weak var mapView: MKMapView!
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location =  coord {
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let locationCenter = CLLocationCoordinate2D(latitude: 31.1471 , longitude:75.3412 )
            let region = MKCoordinateRegion(center: locationCenter , span: span )
            mapView.setRegion(region, animated: true)
        }
    }
    
    
    @IBAction func mumbaiBtn(_ sender: Any) {
        coord = CLLocation(latitude: 19.076, longitude: 72.8777)
        manager.startUpdatingLocation()
        print("Mumbai clicked")
    }
}

