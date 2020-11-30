//
//  addBirthdayViewController.swift
//  BirthdayTracker
//
//  Created by Dmitriy Shrayber on 27.11.2020.
//

import UIKit

protocol AddBirthdayViewControllerDelegate {
    
    
    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
}

class AddBirthdayViewController: UIViewController {
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    var delegate:AddBirthdayViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lastNameTextField.delegate = self
        firstNameTextField.delegate = self
        birthdatePicker.maximumDate = Date()
    }
    @IBAction func savePressed(_ sender: Any) {
        let lastName = lastNameTextField.text ?? ""
        let firstName = firstNameTextField.text ?? ""
        let birthDate = birthdatePicker.date
        let newBirthDay = Birthday(firstName: firstName, lastName: lastName, birthDate: birthDate)
        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthDay)
        dismiss(animated: true, completion: nil)
        print("Birthday created")
    }
    @IBAction func cancellTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
extension AddBirthdayViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        return true
    }
    
}
    
