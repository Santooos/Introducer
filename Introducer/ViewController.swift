//
//  ViewController.swift
//  Introducer
//
//  Created by Santosh Lamichhane on 1/15/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfPetsLabel: UILabel!
    var numAdditionalPets = 0;
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var introduceButton: UIButton!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numAdditionalPets = Int(sender.value)
        numberOfPetsLabel.text = "\(numAdditionalPets)"
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {

        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."

        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)

    }




    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//Alternative code to handle the case if user leave all the spaces blank
rd
//import UIKit

//class ViewController: UIViewController {
//
//    @IBOutlet weak var numberOfPetsLabel: UILabel!
//    var numAdditionalPets = 0
//    @IBOutlet weak var morePetsStepper: UIStepper!
//    @IBOutlet weak var firstNameTextField: UITextField!
//    @IBOutlet weak var lastNameTextField: UITextField!
//    @IBOutlet weak var schoolNameTextField: UITextField!
//    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
//    @IBOutlet weak var morePetsSwitch: UISwitch!
//    @IBOutlet weak var introduceButton: UIButton!
//    @IBAction func stepperDidChange(_ sender: UIStepper) {
//        numAdditionalPets = Int(sender.value)
//        numberOfPetsLabel.text = "\(numAdditionalPets)"
//    }
//    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
//        guard let firstName = firstNameTextField.text, !firstName.isEmpty,
//              let lastName = lastNameTextField.text, !lastName.isEmpty,
//              let school = schoolNameTextField.text, !school.isEmpty else {
//                let alertController = UIAlertController(title: "Error", message: "Please fill all the text fields before introducing yourself.", preferredStyle: .alert)
//                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//                alertController.addAction(action)
//                present(alertController, animated: true, completion: nil)
//                return
//        }
//        let year = yearSegmentedControl.selectedSegmentIndex != UISegmentedControl.noSegment ? yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex) : ""
//        let introduction = "My name is \(firstName) \(lastName) and I attend \(school). I am currently in my \(year!) year and I own \(numAdditionalPets) pets. I want more pets: \(morePetsSwitch.isOn ? "Yes" : "No")."
//        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
//        let action = UIAlertAction(title: "Nice to meet you!", style: .default) { _ in
//            self.firstNameTextField.text = ""
//            self.lastNameTextField.text = ""
//            self.schoolNameTextField.text = ""
//            self.yearSegmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
//            self.morePetsSwitch.isOn = false
//            self.morePetsStepper.value = 0
//            self.numAdditionalPets = 0
//            self.numberOfPetsLabel.text = "0"
//        }
//        alertController.addAction(action)
//        present(alertController, animated: true, completion: nil)
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//}
