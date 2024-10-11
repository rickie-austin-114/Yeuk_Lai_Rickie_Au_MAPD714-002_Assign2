// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 8 Oct 2024
// App Description: This is a phone purchasing app in MAPD714
// Version: 1.0.1

import UIKit

class SixthViewController: UIViewController {
    
    var receivedText: String?


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // let user to pick credit card, debit card or apple / google pay, send data to the view controller accordingly
        // if user picked credit card
        if segue.identifier == "showCreditCard" {
            print("Sending to credit card")
            let destinationVC = segue.destination as! CreditCardViewController
            if let textToSend = receivedText as? String {
                print(textToSend)
                destinationVC.receivedText = textToSend
            }
            // if user picked debit card
        } else if segue.identifier == "showDebitCard" {
            print("Sending to debit card")

            let destinationVC = segue.destination as! DebitCardViewController
            if let textToSend = receivedText as? String {
                print(textToSend)
                destinationVC.receivedText = textToSend
            }
            // if user picked apple / google pay
        } else if segue.identifier == "showAppleGooglePay" {
            print("Sending to apple google pay")

            let destinationVC = segue.destination as! AppleGooglePayViewController
            if let textToSend = receivedText as? String {
                print(textToSend)
                destinationVC.receivedText = textToSend
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
