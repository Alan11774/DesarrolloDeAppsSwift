import UIKit

class MyInfoViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sectionRowTuple = (indexPath.section,indexPath.row)
        print("sectionRowTuple: ",sectionRowTuple)
        
        switch sectionRowTuple {
        case (1, 0):
            performSegue(withIdentifier: "socialMediaSegue", sender: self)
        case (2, 0):
            performSegue(withIdentifier: "sportsSegue", sender: self)
        case (2, 1):
            performSegue(withIdentifier: "musicSegue", sender: self)
        default:
            break
        }
    }
}
