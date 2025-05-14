
import UIKit

class ViewControllerTableView: UIViewController , UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    var city = ["Goa" ,"Mumbai" , "Delhi"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellObj = tableView.dequeueReusableCell(withIdentifier: "cityList", for: IndexPath())
        cellObj.textLabel?.text = city[indexPath.row]
        return cellObj
    }
    
    
    @IBOutlet weak var showSelectedCity: UILabel!
    
    var selectedIndex = 0
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showSelectedCity.text = city[indexPath.row]
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "selectCell", sender: nil)
    }
    
    @IBOutlet weak var fillValue: UITextField!
    
    @IBOutlet weak var showFilledValueLbl: UILabel!
    
    @IBAction func saveBtn(_ sender: Any) {
        if let newCity = fillValue.text , !newCity.isEmpty {
            showFilledValueLbl.text = newCity
            city.append(newCity)
            tableView.reloadData()
        }
        else{
            let alert = UIAlertController(title: "Empty Input", message: "Please enter a city name.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let desObject = segue.destination as! ViewControllerTableViewDetails
        desObject.cellValue = city[selectedIndex]
    }
}
