
import UIKit

class ViewControllerMultipleSection: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSelected.isHidden = true
        
    }
    
   
    
    var continents = ["Asia", "Africa", "Europe"]

    var countriesAsia = ["India", "Sri Lanka", "Japan", "China", "Thailand"]
    var countriesAfrica = ["South Africa", "Nigeria", "Kenya", "Egypt"]
    var countriesEurope = ["Bulgaria", "France", "Germany"]

    func numberOfSections(in tableView: UITableView) -> Int {
        return continents.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
            case 0:
                return countriesAsia.count
            case 1:
                return countriesAfrica.count
            default:
                return countriesEurope.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellObj = tableView.dequeueReusableCell(withIdentifier: "multiCell",for: indexPath)
        
        switch (indexPath.section) {
            case 0:
                cellObj.textLabel?.text = countriesAsia[indexPath.row]
            case 1:
                cellObj.textLabel?.text = countriesAfrica[indexPath.row]
            default:
                cellObj.textLabel?.text = countriesEurope[indexPath.row]
        }
        return cellObj
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return continents[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return " "
    }
    
    
    
    @IBOutlet weak var showSelected: UILabel!
    
    
    var selectedIndex : Int = 0
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch (indexPath.section) {
        case 0:
            showSelected.isHidden = false
            showSelected.text = countriesAsia[indexPath.row]
            selectedIndex = countriesAsia[indexPath.row].count
        case 1:
            showSelected.isHidden = false
            showSelected.text = countriesAfrica[indexPath.row]
            selectedIndex = countriesAfrica[indexPath.row].count
        default:
            showSelected.isHidden = false
            showSelected.text = countriesEurope[indexPath.row]
            selectedIndex = countriesEurope[indexPath.row].count
        }
//        performSegue(withIdentifier: "toMulti", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let desObject = segue.destination as! ViewControllerMultipleSectionData
//        switch (indexPath.section) {
//            case 0:
//                desObject.cellValue = countriesAsia[selectedIndex]
//            case 1:
//                desObject.cellValue = countriesAfrica[selectedIndex]
//            default:
//                desObject.cellValue = countriesEurope[selectedIndex]
//        }
//    }
}
