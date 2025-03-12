//
//  ChemicalUsedViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 17/02/2025.
//

import UIKit

struct PestType {
    var mice: Bool = false
    var ants: Bool = false
    var fleas: Bool = false
    var rats: Bool = false
    var cockroach: Bool = false
    var bedbug: Bool = false
    
    var difenacoumUnit: String? = nil
    var difenacoumUnit2: String? = nil
    var brodifacoumUnit: String? = nil
    var brodifacoumUnit2: String? = nil
    var bromadioloneUnit: String? = nil
    var bromadioloneUnit2: String? = nil
    
    var difenacoum: Bool = false
    var brodifacoum: Bool = false
    var bromadiolone: Bool = false
    var indoxacarb: Bool = false
    var bendiocarb: Bool = false
    var cypermethrin: Bool = false
    var tetramethrin: Bool = false
    var fenprie: Bool = false
    var other: Bool = false
    
    init() {}
}

class ChemicalUsedViewController: UIViewController {

    @IBOutlet weak var miceCheckbox: UIButton!
    @IBOutlet weak var antsCheckbox: UIButton!
    @IBOutlet weak var fleasCheckbox: UIButton!
    @IBOutlet weak var ratsCheckbox: UIButton!
    @IBOutlet weak var cockroachCheckbox: UIButton!
    @IBOutlet weak var bedbugCheckbox: UIButton!
    @IBOutlet weak var otherTextField: UITextField!
    @IBOutlet weak var difanacoumUnitTextfield: UITextField!
    @IBOutlet weak var difanacoumUnitTextfield2: UITextField!
    @IBOutlet weak var brodifacoumUnitTextfield: UITextField!
    @IBOutlet weak var brodifacoumUnitTextfield2: UITextField!
    @IBOutlet weak var bromadioloneUnitTextfield: UITextField!
    @IBOutlet weak var bromadioloneUnitTextfield2: UITextField!
    @IBOutlet weak var IndoxacarbCheckbox: UIButton!
    @IBOutlet weak var bendiocarbCheckbox: UIButton!
    @IBOutlet weak var cypermethrinCheckbox: UIButton!
    @IBOutlet weak var tetramethrinCheckbox: UIButton!
    @IBOutlet weak var fenprieCheckbox: UIButton!
    @IBOutlet weak var OtherCheckbox: UIButton!
    
    @IBOutlet weak var contentView: UIView!
    
    var mice: Bool = false
    var ants: Bool = false
    var fleas: Bool = false
    var rats: Bool = false
    var cockroach: Bool = false
    var bedbug: Bool = false
    
    var difenacoum: Bool = false
    var brodifacoum: Bool = false
    var bromadiolone: Bool = false
    var indoxacarb: Bool = false
    var bendiocarb: Bool = false
    var cypermethrin: Bool = false
    var tetramethrin: Bool = false
    var fenprie: Bool = false
    var other: Bool = false
    
    var pestType: PestType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        pestType = PestType()

//        let pdfFilePath = self.contentView.exportAsPdfFromView()
//        print(pdfFilePath)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        GlobalData.sharedInstance.outputData.pestType = pestType
    }
    
    func configure() {
        difanacoumUnitTextfield.delegate = self
        brodifacoumUnitTextfield.delegate = self
        bromadioloneUnitTextfield.delegate = self
    }
    
    @IBAction func checkboxTapped(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            mice = !mice
            pestType?.mice = mice
            break
            
        case 2:
            ants = !ants
            pestType?.ants = ants
            break
            
        case 3:
            fleas = !fleas
            pestType?.fleas = fleas
            break
            
        case 4:
            rats = !rats
            pestType?.rats = rats
            break
            
        case 5:
            cockroach = !cockroach
            pestType?.cockroach = cockroach
            break
            
        case 6:
            bedbug = !bedbug
            pestType?.bedbug = bedbug
            break
            
        case 7:
            difenacoum = !difenacoum
            pestType?.difenacoum = difenacoum
            break
            
        case 8:
            brodifacoum = !brodifacoum
            pestType?.brodifacoum = brodifacoum
            break
            
        case 9:
            bromadiolone = !bromadiolone
            pestType?.bromadiolone = bromadiolone
            break
            
        case 10:
            indoxacarb = !indoxacarb
            pestType?.indoxacarb = indoxacarb
            break
            
        case 11:
            bendiocarb = !bendiocarb
            pestType?.bendiocarb = bendiocarb
            break
            
        case 12:
            cypermethrin = !cypermethrin
            pestType?.cypermethrin = cypermethrin
            break
            
        case 13:
            tetramethrin = !tetramethrin
            pestType?.tetramethrin = tetramethrin
            break
            
        case 14:
            fenprie = !fenprie
            pestType?.fenprie = fenprie
            break
          
        default:
            other = !other
            pestType?.other = other
        }
        
        if sender.currentImage == UIImage(resource: .checkboxChecked) {
            sender.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
        } else {
            sender.setImage(UIImage(resource: .checkboxChecked), for: .normal)
        }
    }
    
}

extension ChemicalUsedViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == difanacoumUnitTextfield {
            pestType?.difenacoumUnit = textField.text
        } else if textField == difanacoumUnitTextfield2 {
            pestType?.difenacoumUnit2 = textField.text
        } else if textField == brodifacoumUnitTextfield {
            pestType?.brodifacoumUnit = textField.text
        } else if textField == brodifacoumUnitTextfield2 {
            pestType?.brodifacoumUnit2 = textField.text
        } else if textField == bromadioloneUnitTextfield {
            pestType?.bromadioloneUnit = textField.text
        } else {
            pestType?.bromadioloneUnit2 = textField.text
        }
    }
}


extension UIView {
    
    // Export pdf from Save pdf in drectory and return pdf file path
    func exportAsPdfFromView() -> String {
        
        let pdfPageFrame = self.bounds
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, pdfPageFrame, nil)
        UIGraphicsBeginPDFPageWithInfo(pdfPageFrame, nil)
        guard let pdfContext = UIGraphicsGetCurrentContext() else { return "" }
        self.layer.render(in: pdfContext)
        UIGraphicsEndPDFContext()
        return self.saveViewPdf(data: pdfData)
        
    }
    
    func pdfViewToData() -> Data {
        let pdfPageFrame = self.bounds
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, pdfPageFrame, nil)
        UIGraphicsBeginPDFPageWithInfo(pdfPageFrame, nil)
        guard let pdfContext = UIGraphicsGetCurrentContext() else { return Data() }
        self.layer.render(in: pdfContext)
        UIGraphicsEndPDFContext()
        return pdfData as Data
    }
    
    // Save pdf file in document directory
    func saveViewPdf(data: NSMutableData) -> String {
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docDirectoryPath = paths[0]
        let pdfPath = docDirectoryPath.appendingPathComponent("viewPdf.pdf")
        if data.write(to: pdfPath, atomically: true) {
            return pdfPath.path
        } else {
            return ""
        }
        
//        let activityViewController = UIActivityViewController(activityItems: ["Name To Present to User", data], applicationActivities: nil)
//        present(activityViewController, animated: true, completion: nil)
    }
}
