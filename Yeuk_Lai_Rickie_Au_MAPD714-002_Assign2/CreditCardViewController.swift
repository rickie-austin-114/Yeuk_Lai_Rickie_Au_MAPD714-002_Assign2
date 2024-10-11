// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 8 Oct 2024
// App Description: This is a phone purchasing app in MAPD714
// Version: 1.0.1


import UIKit

class CreditCardViewController: UIViewController {
    var receivedText: String?

    // receive user input
    @IBOutlet weak var cardNumberInput: UITextField!
    
    @IBOutlet weak var expiratoryDateInput: UITextField!
    
    @IBOutlet weak var cvvInput: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let text = receivedText {
            print("Credit card received: \(text)")
        }
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCreditFinal" {
            let destinationVC = segue.destination as! FinalViewController
            if let textToSend = receivedText as? String {
                print(textToSend)
                
                // if user input is empty, set it to empty string
                let cardNumber = cardNumberInput.text ?? ""
                let expiratoryDate = expiratoryDateInput.text ?? ""
                let cvv = cvvInput.text ?? ""
                
                // append user input to the text display
                let textOutput = "\(textToSend)\nPayment Method: Credit Card\nCard Number: \(cardNumber)\nExpiratory Date: \(expiratoryDate)\nCVV: \(cvv)"
                
                // send the text to display to the final view controller
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
