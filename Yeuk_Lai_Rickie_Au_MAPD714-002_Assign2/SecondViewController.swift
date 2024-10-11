// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 8 Oct 2024
// App Description: This is a phone purchasing app in MAPD714
// Version: 1.0.1


import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

// Generate a table for samsung, iphone and google pixel
    @IBOutlet weak var tableView: UITableView!
    
    let data = ["Samsung", "iPhone", "GooglePixel"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // set the length of the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // set the table text to the data array
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
// function for row selection
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedText = data[indexPath.row] // Get the text of the selected row
        performSegue(withIdentifier: "showThird", sender: selectedText)
    }
    
// send the brand data to the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showThird" {
            let destinationVC = segue.destination as! ThirdViewController
            if let textToSend = sender as? String {
                // pass the data to the next view
                destinationVC.receivedText = textToSend
            }
        }
    }
}



