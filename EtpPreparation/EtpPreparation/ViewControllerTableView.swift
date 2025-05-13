
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
    
    var selectedIndex = 0
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellObj = tableView.dequeueReusableCell(withIdentifier: "cityList", for: IndexPath())
        cellObj.textLabel?.text = city[indexPath.row]
        selectedIndex = indexPath.row
        return cellObj
    }
    
    
    @IBOutlet weak var showSelectedCity: UILabel!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showSelectedCity.text = city[indexPath.row]
        
        performSegue(withIdentifier: "selectCell", sender: nil)
    }
    
    @IBOutlet weak var fillValue: UITextField!
    
    @IBOutlet weak var showFilledValueLbl: UILabel!
    
    @IBAction func saveBtn(_ sender: Any) {
        showFilledValueLbl.text = fillValue.text
        city.append(String(fillValue!.text))
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let desObject = segue.destination as! ViewControllerTableViewDetails
        desObject.cellValue = city[selectedIndex]
    }
}
