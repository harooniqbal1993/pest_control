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
    
    @IBOutlet weak var miceLabel: UILabel!
    @IBOutlet weak var ratsLabel: UILabel!
    @IBOutlet weak var antsLabel: UILabel!
    @IBOutlet weak var cockroachLabel: UILabel!
    @IBOutlet weak var fleasLabel: UILabel!
    @IBOutlet weak var bedbugLabel: UILabel!
    @IBOutlet weak var indoxacarbLabel: UILabel!
    @IBOutlet weak var bendiocarbLabel: UILabel!
    @IBOutlet weak var cypermethrinLabel: UILabel!
    @IBOutlet weak var tetramethrinLabel: UILabel!
    @IBOutlet weak var fenprieLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    
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
        otherTextField.delegate = self
        difanacoumUnitTextfield2.delegate = self
        brodifacoumUnitTextfield2.delegate = self
        bromadioloneUnitTextfield2.delegate = self
        
        addTapGesture()
    }
    
    func addTapGesture() {
        let miceTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let ratsTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let antsTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let cockroachTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let bedbugTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let fleasTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let indoxacarbTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let bendiocarbTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let cypermethrinTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let tetramethrinTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let fenprieTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let otherTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
                
        miceLabel.isUserInteractionEnabled = true
        miceLabel.addGestureRecognizer(miceTapGesture)
        
        ratsLabel.isUserInteractionEnabled = true
        ratsLabel.addGestureRecognizer(ratsTapGesture)
        
        antsLabel.isUserInteractionEnabled = true
        antsLabel.addGestureRecognizer(antsTapGesture)
        
        cockroachLabel.isUserInteractionEnabled = true
        cockroachLabel.addGestureRecognizer(cockroachTapGesture)
        
        bedbugLabel.isUserInteractionEnabled = true
        bedbugLabel.addGestureRecognizer(bedbugTapGesture)
        
        fleasLabel.isUserInteractionEnabled = true
        fleasLabel.addGestureRecognizer(fleasTapGesture)
        
        indoxacarbLabel.isUserInteractionEnabled = true
        indoxacarbLabel.addGestureRecognizer(indoxacarbTapGesture)
        
        bendiocarbLabel.isUserInteractionEnabled = true
        bendiocarbLabel.addGestureRecognizer(bendiocarbTapGesture)
        
        cypermethrinLabel.isUserInteractionEnabled = true
        cypermethrinLabel.addGestureRecognizer(cypermethrinTapGesture)
        
        tetramethrinLabel.isUserInteractionEnabled = true
        tetramethrinLabel.addGestureRecognizer(tetramethrinTapGesture)
        
        fenprieLabel.isUserInteractionEnabled = true
        fenprieLabel.addGestureRecognizer(fenprieTapGesture)
        
        otherLabel.isUserInteractionEnabled = true
        otherLabel.addGestureRecognizer(otherTapGesture)
    }
    
    func handleCheckboxTap(tag: Int) {
        switch tag {
        case 1:
            mice = !mice
            pestType?.mice = mice
            
            if miceCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                miceCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                miceCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 2:
            ants = !ants
            pestType?.ants = ants
            
            if antsCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                antsCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                antsCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 3:
            fleas = !fleas
            pestType?.fleas = fleas
            
            if fleasCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                fleasCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                fleasCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 4:
            rats = !rats
            pestType?.rats = rats
            
            if ratsCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                ratsCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                ratsCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 5:
            cockroach = !cockroach
            pestType?.cockroach = cockroach
            
            if cockroachCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                cockroachCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                cockroachCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 6:
            bedbug = !bedbug
            pestType?.bedbug = bedbug
            
            if bedbugCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                bedbugCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                bedbugCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
//        case 7:
//            difenacoum = !difenacoum
//            pestType?.difenacoum = difenacoum
//            break
//            
//        case 8:
//            brodifacoum = !brodifacoum
//            pestType?.brodifacoum = brodifacoum
//            break
//            
//        case 9:
//            bromadiolone = !bromadiolone
//            pestType?.bromadiolone = bromadiolone
//            break
            
        case 7:
            indoxacarb = !indoxacarb
            pestType?.indoxacarb = indoxacarb
            
            if IndoxacarbCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                IndoxacarbCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                IndoxacarbCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 8:
            bendiocarb = !bendiocarb
            pestType?.bendiocarb = bendiocarb
            
            if bendiocarbCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                bendiocarbCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                bendiocarbCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 9:
            cypermethrin = !cypermethrin
            pestType?.cypermethrin = cypermethrin
            
            if cypermethrinCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                cypermethrinCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                cypermethrinCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 10:
            tetramethrin = !tetramethrin
            pestType?.tetramethrin = tetramethrin
            
            if tetramethrinCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                tetramethrinCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                tetramethrinCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 11:
            fenprie = !fenprie
            pestType?.fenprie = fenprie
            
            if fenprieCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                fenprieCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                fenprieCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
          
        default:
            other = !other
            pestType?.other = other
            
            if OtherCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                OtherCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                OtherCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
        }
    }
    
    @objc func doSomethingOnTap(_ gesture: UITapGestureRecognizer) {
        if let tappedLabel = gesture.view as? UILabel {
            print("Tapped UILabel tag: \(tappedLabel.tag)")
            handleCheckboxTap(tag: tappedLabel.tag)
        }
    }
    
    @IBAction func checkboxTapped(_ sender: UIButton) {
        handleCheckboxTap(tag: sender.tag)
//        switch sender.tag {
//        case 1:
//            mice = !mice
//            pestType?.mice = mice
//            break
//            
//        case 2:
//            ants = !ants
//            pestType?.ants = ants
//            break
//            
//        case 3:
//            fleas = !fleas
//            pestType?.fleas = fleas
//            break
//            
//        case 4:
//            rats = !rats
//            pestType?.rats = rats
//            break
//            
//        case 5:
//            cockroach = !cockroach
//            pestType?.cockroach = cockroach
//            break
//            
//        case 6:
//            bedbug = !bedbug
//            pestType?.bedbug = bedbug
//            break
//            
//        case 7:
//            difenacoum = !difenacoum
//            pestType?.difenacoum = difenacoum
//            break
//            
//        case 8:
//            brodifacoum = !brodifacoum
//            pestType?.brodifacoum = brodifacoum
//            break
//            
//        case 9:
//            bromadiolone = !bromadiolone
//            pestType?.bromadiolone = bromadiolone
//            break
//            
//        case 10:
//            indoxacarb = !indoxacarb
//            pestType?.indoxacarb = indoxacarb
//            break
//            
//        case 11:
//            bendiocarb = !bendiocarb
//            pestType?.bendiocarb = bendiocarb
//            break
//            
//        case 12:
//            cypermethrin = !cypermethrin
//            pestType?.cypermethrin = cypermethrin
//            break
//            
//        case 13:
//            tetramethrin = !tetramethrin
//            pestType?.tetramethrin = tetramethrin
//            break
//            
//        case 14:
//            fenprie = !fenprie
//            pestType?.fenprie = fenprie
//            break
//          
//        default:
//            other = !other
//            pestType?.other = other
//        }
//        
//        if sender.currentImage == UIImage(resource: .checkboxChecked) {
//            sender.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
//        } else {
//            sender.setImage(UIImage(resource: .checkboxChecked), for: .normal)
//        }
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
