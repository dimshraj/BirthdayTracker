//
//  addBirthdayViewController.swift
//  BirthdayTracker
//
//  Created by Dmitriy Shrayber on 27.11.2020.
//

import UIKit
import CoreData

class AddBirthdayViewController: UIViewController {
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
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
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newBirthday = Birthday(context: context)
        newBirthday.firstName = firstName
        newBirthday.lastName = lastName
        newBirthday.birthDate = birthDate as Date?
        newBirthday.birthdayId = UUID().uuidString
        if let uniqueId = newBirthday.birthdayId {
            print("birthdayId: \(uniqueId)")
        }
        
        do {
            try context.save()
        } catch let error {
            print("can't save with error: \(error.localizedDescription)")
        }
        
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
    
