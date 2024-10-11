// File name: YeukLaiRickieAu_301458593_MAPD714_assignment_1
// Author: Rickie Au
// Student ID: 301458593
// Date: 8 Oct 2024
// App Description: This is a phone purchasing app in MAPD714
// Version: 1.0.1


import UIKit

class FifthViewController: UIViewController {
    
    var receivedText: String?

    // receive user inputs
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var streetInput: UITextField!
    
    @IBOutlet weak var cityInput: UITextField!
    
    @IBOutlet weak var countryInput: UITextField!
    
    @IBOutlet weak var postalCodeInput: UITextField!
    
    @IBOutlet weak var phoneNumberInput: UITextField!
    
    @IBOutlet weak var emailInput: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let text = receivedText {
            print("received: \(text)")
        }
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSixth" {
            let destinationVC = segue.destination as! SixthViewController
            if let textToSend = receivedText as? String {
                
                // get user input, set to empty string if user input is empty
                let name = nameInput.text ?? ""
                let street = streetInput.text ?? ""
                let city = nameInput.text ?? ""
                let country = countryInput.text ?? ""
                let postalCode = postalCodeInput.text ?? ""
                let phoneNumber = phoneNumberInput.text ?? ""
                let email = emailInput.text ?? ""

                // append user input to the text to display
                let outputText = "\(textToSend)\nName: \(name)\nStreet: \(street)\nCity: \(city)\nCountry: \(country)\nPostal Code: \(postalCode)\nPhone Number: \(phoneNumber)\nEmail: \(email)"
                
                destinationVC.receivedText = outputText
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
