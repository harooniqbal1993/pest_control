//
//  PestControlViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 18/02/2025.
//

import UIKit

struct PestControlData {
    var routine: Bool = false
    var followUp: Bool = false
    var callout: Bool = false
    var received: Bool = false
    var reportNumber: String? = nil
    var zone: String? = nil
    var landlordName: String? = nil
    var propertySize: String? = nil
    var agreedPrice: String? = nil
    var landlordPay: String? = nil
    
    init() {}
}

class PestControlViewController: UIViewController {

    @IBOutlet weak var routineCheckbox: UIButton!
    @IBOutlet weak var followupCheckbox: UIButton!
    @IBOutlet weak var callOutCheckbox: UIButton!
    @IBOutlet weak var recievedCheckbox: UIButton!
    @IBOutlet weak var reportNumberTextField: UITextField!
    @IBOutlet weak var zoneTextField: UITextField!
    @IBOutlet weak var lordNameTextField: UITextField!
    @IBOutlet weak var propertySizeTextField: UITextField!
    @IBOutlet weak var agreedPriceTextField: UITextField!
    @IBOutlet weak var landlordPayTextField: UITextField!
    @IBOutlet weak var routineLabel: UILabel!
    @IBOutlet weak var followupLabel: UILabel!
    @IBOutlet weak var calloutLabel: UILabel!
    @IBOutlet weak var receivedLabel: UILabel!
    
    var routine: Bool = false
    var followup: Bool = false
    var callout: Bool = false
    var received: Bool = false
    
    var pestControlData: PestControlData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        pestControlData = PestControlData()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        GlobalData.sharedInstance.outputData.pestControlData = pestControlData
    }
    
    func addTapGesture() {
        let routineTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let followupTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let calloutTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let receivedTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        
        routineLabel.isUserInteractionEnabled = true
        routineLabel.addGestureRecognizer(routineTapGesture)
        
        followupLabel.isUserInteractionEnabled = true
        followupLabel.addGestureRecognizer(followupTapGesture)
        
        calloutLabel.isUserInteractionEnabled = true
        calloutLabel.addGestureRecognizer(calloutTapGesture)
        
        receivedLabel.isUserInteractionEnabled = true
        receivedLabel.addGestureRecognizer(receivedTapGesture)
    }
    
    func configure() {
        reportNumberTextField.delegate = self
        zoneTextField.delegate = self
        lordNameTextField.delegate = self
        propertySizeTextField.delegate = self
        agreedPriceTextField.delegate = self
        landlordPayTextField.delegate = self
        
        addTapGesture()
    }
    
    func handleCheckboxTap(tag: Int) {
        switch tag {
        case 0:
            routine = !routine // (pestControlData?.routine ?? false) == false ? true : false
            pestControlData?.routine = routine
            if routineCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                routineCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                routineCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
        case 1:
            followup = !followup // (pestControlData?.followUp ?? false) == false ? true : false
            pestControlData?.followUp = followup
            if followupCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                followupCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                followupCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
        case 2:
            callout = !callout // (pestControlData?.callout ?? false) == false ? true : false
            pestControlData?.callout = callout
            if callOutCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                callOutCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                callOutCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
        default:
            received = !received // (pestControlData?.callout ?? false) == false ? true : false
            pestControlData?.received = received
            
            if recievedCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                recievedCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                recievedCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
        }
        
//        if sender.currentImage == UIImage(resource: .checkboxChecked) {
//            sender.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
//        } else {
//            sender.setImage(UIImage(resource: .checkboxChecked), for: .normal)
//        }
    }
    
    @objc func doSomethingOnTap(_ gesture: UITapGestureRecognizer) {
        print("tapped")
        if let tappedLabel = gesture.view as? UILabel {
            print("Tapped UILabel tag: \(tappedLabel.tag)")
            handleCheckboxTap(tag: tappedLabel.tag)
        }
    }
    
    @IBAction func checkboxTapped(_ sender: UIButton) {
        handleCheckboxTap(tag: sender.tag)
//        switch sender.tag {
//        case 0:
//            routine = !routine // (pestControlData?.routine ?? false) == false ? true : false
//            pestControlData?.routine = routine
//            break
//        case 1:
//            followup = !followup // (pestControlData?.followUp ?? false) == false ? true : false
//            pestControlData?.followUp = followup
//            break
//        case 2:
//            callout = !callout // (pestControlData?.callout ?? false) == false ? true : false
//            pestControlData?.callout = callout
//            break
//        default:
//            received = !received // (pestControlData?.callout ?? false) == false ? true : false
//            pestControlData?.received = received
//        }
//        
//        if sender.currentImage == UIImage(resource: .checkboxChecked) {
//            sender.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
//        } else {
//            sender.setImage(UIImage(resource: .checkboxChecked), for: .normal)
//        }
    }
}

extension PestControlViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == reportNumberTextField {
            pestControlData?.reportNumber = textField.text
        } else if textField == zoneTextField {
            pestControlData?.zone = textField.text
        }  else if textField == lordNameTextField {
            pestControlData?.landlordName = textField.text
        } else if textField == propertySizeTextField {
            pestControlData?.propertySize = textField.text
        } else if textField == agreedPriceTextField {
            pestControlData?.agreedPrice = textField.text
        } else {
            pestControlData?.landlordPay = textField.text
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
