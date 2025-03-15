//
//  InspectionViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 20/02/2025.
//

import UIKit

class InspectionViewController: UIViewController {
    
    @IBOutlet weak var inspectionTextview: UITextView!
    @IBOutlet weak var recommendationTextview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inspectionTextview.delegate = self
        recommendationTextview.delegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        GlobalData.sharedInstance.outputData.inspection = inspectionTextview.text
        GlobalData.sharedInstance.outputData.recommendation = recommendationTextview.text
    }
}

extension InspectionViewController: UITextViewDelegate {
    
    //    func textViewDidEndEditing(_ textView: UITextView) {
    //        if textView == inspectionTextview {
    //            GlobalData.sharedInstance.outputData.inspection = inspectionTextview.text
    //        } else {
    //            GlobalData.sharedInstance.outputData.recommendation = recommendationTextview.text
    //        }
    //    }
    
    /* Updated for Swift 4 */
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}
