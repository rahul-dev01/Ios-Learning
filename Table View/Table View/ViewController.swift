import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource  {

    override func viewDidLoad() {
        super.viewDidLoad()
        cellData.isHidden = true
       
    }
    
    @IBOutlet weak var cellData: UILabel!
    
    var countries = ["India" , "Sri Lanka" , "Japan"]

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    var selectedIndex : Int = 0
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellData.isHidden = false
        cellData.text = countries[indexPath.row]
        
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "2nd", sender: nil)
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let desObject = segue.destination as! CellDataViewController
        desObject.cellValue = countries[selectedIndex]
    }
}

