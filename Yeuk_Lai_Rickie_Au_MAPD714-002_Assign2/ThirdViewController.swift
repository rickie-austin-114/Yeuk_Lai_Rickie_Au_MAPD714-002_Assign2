// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 8 Oct 2024
// App Description: This is a phone purchasing app in MAPD714
// Version: 1.0.1

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
     
    // table
    @IBOutlet weak var tableView: UITableView!
    
    // storage segment control
    @IBOutlet weak var storageSegmentedControl: UISegmentedControl!
    // color segment control
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    
    
    // text to display on table
    var data = ["Google Pixel 8: $500", "Google Pixel 8 Pro: $600", "Google Pixel 9: $700", "Google Pixel 9 Pro: $800", "Google Pixel 9 Pro XL: $900"] // The labels for the rows
    
    // model names, google pixel as default
    var model = ["Google Pixel 8", "Google Pixel 8 Pro", "Google Pixel 9", "Google Pixel 9 Pro", "Google Pixel 9 Pro XL"]
    
    // prices, google pixel as default
    var prices = [500, 600, 700, 800, 900]

    
    var receivedText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // receive the brand from user input
        if let text = receivedText {
            // update the data to samsung
            if text == "Samsung" {
                data = ["Galaxy S20: $550", "Galaxy S21: $650", "Galaxy S23: $750", "Galaxy Z fold 5: $850", "Galaxy Z fold 6: $950"]
                model = ["Galaxy S20", "Galaxy S21", "Galaxy S23", "Galaxy Z fold 5", "Galaxy Z fold 6"]
                prices = [550, 650, 750, 850, 950]
            } else if text == "iPhone" {
                // update the data to iphone
                data = ["iPhone 14: $600","iPhone 15: $700","iPhone 15 Pro: $800","iPhone 16: $900","iPhone 16 Pro: $1000"]
                model = ["iPhone 14","iPhone 15","iPhone 15 Pro","iPhone 16","iPhone 16 Pro"]
                prices = [600, 700, 800, 900, 1000]
            }
        }
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    // setup the table, as explained in second view controller
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showForth", sender: indexPath.row)
    }
    
    // Prepare for segue to pass data to the SecondViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showForth" {
            let destinationVC = segue.destination as! ForthViewController
            if let index = sender as? Int, let brand = receivedText as? String {
                
                // get storage input of user
                let storageIndex = storageSegmentedControl.selectedSegmentIndex
                let storageText = storageSegmentedControl.titleForSegment(at: storageIndex) ?? ""
                
                // get color input of user
                let colorIndex = colorSegmentedControl.selectedSegmentIndex
                let colorText = colorSegmentedControl.titleForSegment(at: colorIndex) ?? ""
                
                // generate output text
                let text = "Brand: \(brand)\nModel: \(model[index])\nPrice: $\(prices[index])\nStorage: \(storageText)\nColor: \(colorText)"
                // send to next view controller
                destinationVC.receivedText = text
            }
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
