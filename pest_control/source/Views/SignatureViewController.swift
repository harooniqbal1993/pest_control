//
//  SignatureViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 24/02/2025.
//

import UIKit
import SwiftSignatureView

struct SignatureData {
    var clientName: String?
    var clientSignature: Data?
    var workerName: String?
    var workerSignature: Data?
    var proofImage: Data?
}

class SignatureViewController: UIViewController {
    
    @IBOutlet weak var clientNameTextField: UITextField!
    @IBOutlet weak var clientSignatureView: SwiftSignatureView!
    @IBOutlet weak var workerNameTextField: UITextField!
    @IBOutlet weak var workerSignatureView: SwiftSignatureView!
    @IBOutlet weak var uploadImageButton: UIButton!
    @IBOutlet weak var proofImage: UIImageView!
    
    var signatureData: SignatureData? = SignatureData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clientNameTextField.delegate = self
        workerNameTextField.delegate = self
        
        uploadImageButton.round()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        signatureData?.clientName = clientNameTextField.text
        signatureData?.clientSignature = clientSignatureView.getCroppedSignature()?.jpegData(compressionQuality: 0.5)
        signatureData?.workerName = workerNameTextField.text
        signatureData?.workerSignature = workerSignatureView.getCroppedSignature()?.jpegData(compressionQuality: 0.5)
        
        GlobalData.sharedInstance.outputData.signatureData = signatureData
    }
    
    func presentUploadOptions() {
        let alert = UIAlertController(title: "Attach", message: "Please Select an Option", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default , handler:{ (UIAlertAction) in
            let picker = UIImagePickerController()
            picker.sourceType = .camera
            picker.allowsEditing = true
            picker.delegate = self
            self.present(picker, animated: true)
        }))
        
        alert.addAction(UIAlertAction(title: "Photo Gallery", style: .default , handler:{ (UIAlertAction)in
            let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
            self.present(picker, animated: true)
        }))
        
        
        //uncomment for iPad Support
        //alert.popoverPresentationController?.sourceView = self.view
        
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    @IBAction func uploadImageTapped(_ sender: UIButton) {
        presentUploadOptions()
    }
}

extension SignatureViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension SignatureViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        
        proofImage.image = image
        signatureData?.proofImage = image.jpegData(compressionQuality: 0.3)
        
        dismiss(animated: true)
    }
}
