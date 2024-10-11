// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 8 Oct 2024
// App Description: This is a phone purchasing app in MAPD714
// Version: 1.0.1

import UIKit

class DebitCardViewController: UIViewController {
    var receivedText: String?

    // receive user input
    @IBOutlet weak var pinInput: UITextField!
    @IBOutlet weak var cardNumberInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDebitFinal" {
            let destinationVC = segue.destination as! FinalViewController
            if let textToSend = receivedText as? String {

                // set text display to empty string if user input is empty
                let cardNumber = cardNumberInput.text ?? ""
                let pin = pinInput.text ?? ""
                
                // append user input to the text display
                let textOutput = "\(textToSend)\nPayment Method: Debit Card\nCard Number: \(cardNumber)\nPIN: \(pin)"
                // send text display to the final view controller
                destinationVC.receivedText = textOutput
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
