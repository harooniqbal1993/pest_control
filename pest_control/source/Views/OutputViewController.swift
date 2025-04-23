//
//  OutputViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 18/02/2025.
//

import UIKit

class OutputViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.round()
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        generateAndShowPDF()
//        return
        let myView = Bundle.main.loadNibNamed("PDFLayout", owner: nil, options: nil)![0] as! UIView
        if let view = myView as? PDFLayout {
//            view.fillData()
            view.initiate()
        }
//        scrollView.contentSize.width = myView.frame.width
//        print(myView.frame.width)
//        contentView.frame.size.width = myView.frame.width
        
        contentView.addSubview(myView)
        
        let path = contentView.exportAsPdfFromView()
        print(path)
    }
    
//    func generateAndShowPDF() {
//        let pdfGenerator = PDFGenerator()
//        let pdfData = pdfGenerator.createPestControlReport()
//
//        let pdfView = PDFView(frame: self.view.bounds)
//        pdfView.autoScales = true
//        self.view.addSubview(pdfView)
//
//        let pdfDocument = PDFDocument(data: pdfData)
//        pdfView.document = pdfDocument
//    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
//        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    
    @IBAction func downloadTapped(_ sender: UIButton) {
        let path = contentView.exportAsPdfFromView()
        print(path)
        
        let activityViewController = UIActivityViewController(activityItems: ["Lazer Pest Control", contentView.pdfViewToData()], applicationActivities: nil)
        
        activityViewController.completionWithItemsHandler = {(activityType: UIActivity.ActivityType?, completed: Bool, returnedItems: [Any]?, error: Error?) in
            if !completed {
                // User canceled
                print("Saved successfully")
                return
            }
            self.dismiss(animated: true) {
                NotificationCenter.default.post(name: NSNotification.Name("onFormCompletion"), object: "Object", userInfo: ["key":"Value"])
            }
            
            // User completed activity
        }
        present(activityViewController, animated: true, completion: nil)
    }
    
}

//import UIKit
//import PDFKit
//
//class PDFGenerator {
//    func createPestControlReport() -> Data {
//        let pdfMetaData = [
//            kCGPDFContextCreator: "Laser Pest Control",
//            kCGPDFContextAuthor: "Your App"
//        ]
//        let format = UIGraphicsPDFRendererFormat()
//        format.documentInfo = pdfMetaData as [String: Any]
//
//        let pageWidth: CGFloat = 612
//        let pageHeight: CGFloat = 792
//        let renderer = UIGraphicsPDFRenderer(bounds: CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight), format: format)
//
//        let data = renderer.pdfData { context in
//            context.beginPage()
//
//            let textAttributes: [NSAttributedString.Key: Any] = [
//                .font: UIFont.systemFont(ofSize: 12),
//                .foregroundColor: UIColor.black
//            ]
//
//            let titleAttributes: [NSAttributedString.Key: Any] = [
//                .font: UIFont.boldSystemFont(ofSize: 16),
//                .foregroundColor: UIColor.red
//            ]
//
//            let startX: CGFloat = 20
//            var currentY: CGFloat = 30
//            
//            // Draw Company Logo & Title
//            let title = "TREATMENT REPORT"
//            title.draw(at: CGPoint(x: startX + 200, y: currentY), withAttributes: titleAttributes)
//            currentY += 40
//
//            // Contract Details Section
//            "CONTRACT DETAILS OF BUSINESS / OCCUPIER:".draw(at: CGPoint(x: startX, y: currentY), withAttributes: titleAttributes)
//            currentY += 20
//            "Name: __________________________".draw(at: CGPoint(x: startX, y: currentY), withAttributes: textAttributes)
//            currentY += 20
//            "Telephone: __________________________".draw(at: CGPoint(x: startX, y: currentY), withAttributes: textAttributes)
//            currentY += 20
//            "Email: __________________________".draw(at: CGPoint(x: startX, y: currentY), withAttributes: textAttributes)
//            currentY += 20
//            "Address for treatment: __________________________".draw(at: CGPoint(x: startX, y: currentY), withAttributes: textAttributes)
//            currentY += 20
//            "Postcode: __________________________".draw(at: CGPoint(x: startX, y: currentY), withAttributes: textAttributes)
//            currentY += 30
//
//            // Types of Pest Section
//            "TYPES OF PEST".draw(at: CGPoint(x: startX, y: currentY), withAttributes: titleAttributes)
//            currentY += 20
//            let pests = ["Mice", "Rats", "Ants", "Cockroach", "Fleas", "Bedbug", "Other"]
//            for pest in pests {
//                drawCheckbox(at: CGPoint(x: startX, y: currentY))
//                pest.draw(at: CGPoint(x: startX + 20, y: currentY), withAttributes: textAttributes)
//                currentY += 20
//            }
//
//            currentY += 10
//            // Chemical Used Section
//            "CHEMICAL USED:".draw(at: CGPoint(x: startX, y: currentY), withAttributes: titleAttributes)
//            currentY += 20
//            let chemicals = ["Difenacoum", "Brodifacoum", "Bromadiolone", "Indoxacarb", "Bendiocarb", "Cypermethrin", "Alpha-cypermethrin + Tetramethrin", "Fenprie Imidacloprid", "Other"]
//            for chemical in chemicals {
//                drawCheckbox(at: CGPoint(x: startX, y: currentY))
//                chemical.draw(at: CGPoint(x: startX + 20, y: currentY), withAttributes: textAttributes)
//                currentY += 20
//            }
//
//            currentY += 20
//            "INSPECTION:".draw(at: CGPoint(x: startX, y: currentY), withAttributes: titleAttributes)
//            currentY += 20
//            drawMultilineTextBox(at: CGPoint(x: startX, y: currentY), width: pageWidth - 40, height: 60)
//
//            currentY += 80
//            "RECOMMENDATION:".draw(at: CGPoint(x: startX, y: currentY), withAttributes: titleAttributes)
//            currentY += 20
//            drawMultilineTextBox(at: CGPoint(x: startX, y: currentY), width: pageWidth - 40, height: 60)
//
//            currentY += 80
//            "Signature: __________________________".draw(at: CGPoint(x: startX, y: currentY), withAttributes: textAttributes)
//        }
//
//        return data
//    }
//
//    private func drawCheckbox(at point: CGPoint) {
//        let checkboxSize: CGFloat = 12
//        let checkboxRect = CGRect(x: point.x, y: point.y, width: checkboxSize, height: checkboxSize)
//        let context = UIGraphicsGetCurrentContext()
//        context?.setStrokeColor(UIColor.black.cgColor)
//        context?.stroke(checkboxRect)
//    }
//
//    private func drawMultilineTextBox(at point: CGPoint, width: CGFloat, height: CGFloat) {
//        let textBoxRect = CGRect(x: point.x, y: point.y, width: width, height: height)
//        let context = UIGraphicsGetCurrentContext()
//        context?.setStrokeColor(UIColor.black.cgColor)
//        context?.stroke(textBoxRect)
//    }
//}

