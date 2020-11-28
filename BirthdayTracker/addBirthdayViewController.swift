//
//  addBirthdayViewController.swift
//  BirthdayTracker
//
//  Created by Dmitriy Shrayber on 27.11.2020.
//

import UIKit

class addBirthdayViewController: UIViewController {
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdatePicker.maximumDate = Date()
    }
    @IBAction func savePressed(_ sender: Any) {
        let lastName = lastNameTextField.text ?? ""
        let firstName = firstNameTextField.text ?? ""
        let birthDate = birthdatePicker.date
        let newBirthDay = Birthday(firstName: firstName, lastName: lastName, birthDate: birthDate)
        dismiss(animated: true, completion: nil)
        print("Birthday created")
    }
    @IBAction func cancellTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

