//
//  PersonalInformationViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 18/02/2025.
//

import UIKit

struct PersonalInfo {
    var name: String?
    var telephone: String?
    var email: String?
    var treatmentAddress: String?
    var postcode: String?
    var treatmentTime: String?
}

class PersonalInformationViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var telephoneTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var treatAddressTextview: UITextView!
    @IBOutlet weak var postcodeTextfield: UITextField!
    @IBOutlet weak var treatmentTimeTextfield: UITextField!
    @IBOutlet weak var addressTreatmentTextfield: UITextField!
    
    var personalInfo: PersonalInfo? = PersonalInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        GlobalData.sharedInstance.outputData.personalInfo = personalInfo
    }
    
    func configure() {
        
        nameTextfield.delegate = self
        telephoneTextfield.delegate = self
        emailTextfield.delegate = self
        treatAddressTextview.delegate = self
        postcodeTextfield.delegate = self
        treatmentTimeTextfield.delegate = self
        treatAddressTextview.delegate = self
        addressTreatmentTextfield.delegate = self
        
        treatAddressTextview.border()
    }
}

extension PersonalInformationViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == nameTextfield {
            personalInfo?.name = textField.text
        } else if textField == telephoneTextfield {
            personalInfo?.telephone = textField.text
        } else if textField == emailTextfield {
            personalInfo?.email = textField.text
        } else if textField == postcodeTextfield {
            personalInfo?.postcode = textField.text
        } else if textField == treatmentTimeTextfield {
            personalInfo?.treatmentTime = textField.text
        } else if textField == addressTreatmentTextfield {
            personalInfo?.treatmentAddress = textField.text
        } else {
            
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {

        if textView == treatAddressTextview {
            personalInfo?.treatmentAddress = textView.text
        }

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension PersonalInformationViewController: UITextViewDelegate {
    /* Updated for Swift 4 */
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}
