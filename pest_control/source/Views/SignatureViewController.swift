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
}

class SignatureViewController: UIViewController {

    @IBOutlet weak var clientNameTextField: UITextField!
    @IBOutlet weak var clientSignatureView: SwiftSignatureView!
    @IBOutlet weak var workerNameTextField: UITextField!
    @IBOutlet weak var workerSignatureView: SwiftSignatureView!
    
    var signatureData: SignatureData? = SignatureData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        signatureData?.clientName = clientNameTextField.text
        signatureData?.clientSignature = clientSignatureView.getCroppedSignature()?.jpegData(compressionQuality: 0.5)
        signatureData?.workerName = workerNameTextField.text
        signatureData?.workerSignature = workerSignatureView.getCroppedSignature()?.jpegData(compressionQuality: 0.5)
        
        GlobalData.sharedInstance.outputData.signatureData = signatureData
    }
}
