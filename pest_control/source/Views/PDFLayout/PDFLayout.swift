//
//  PDFLayout.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 18/02/2025.
//

import UIKit

class PDFLayout: UIView {
    
    @IBOutlet weak var routineCheckbox: UIImageView!
    @IBOutlet weak var followUpCheckbox: UIImageView!
    @IBOutlet weak var CalloutCheckbox: UIImageView!
    @IBOutlet weak var reportValueLabel: UILabel!
    @IBOutlet weak var zoneValueLabel: UILabel!
    @IBOutlet weak var landlordNameValueLabel: UILabel!
    @IBOutlet weak var propertySizeValueLabel: UILabel!
    @IBOutlet weak var landlordPayValueLabel: UILabel!
    @IBOutlet weak var agreedPriceValueLabel: UILabel!
    @IBOutlet weak var receivedCheckbox: UIImageView!
    @IBOutlet weak var pestTypeContainer: UIView!
    @IBOutlet weak var miceCheckbox: UIImageView!
    @IBOutlet weak var antsCheckbox: UIImageView!
    @IBOutlet weak var fleasCheckbox: UIImageView!
    @IBOutlet weak var ratsCheckbox: UIImageView!
    @IBOutlet weak var cockroachCheckbox: UIImageView!
    @IBOutlet weak var bedbugCheckbox: UIImageView!
    @IBOutlet weak var otherValueLabel: UILabel!
    @IBOutlet weak var difenacoumUnitTextfield: UITextField!
    @IBOutlet weak var brodifacoumUnitTextfield: UITextField!
    @IBOutlet weak var bromadioloneUnitTextfield: UITextField!
    @IBOutlet weak var indoxacarbCheckbox: UIButton!
    @IBOutlet weak var bendiocarbCheckbox: UIButton!
    @IBOutlet weak var cypermethrinCheckbox: UIButton!
    @IBOutlet weak var tetramethrinCheckbox: UIButton!
    @IBOutlet weak var fenprieCheckbox: UIButton!
    @IBOutlet weak var otherCheckbox: UIButton!
    @IBOutlet weak var nameValueLabel: UILabel!
    @IBOutlet weak var telephoneValueLabel: UILabel!
    @IBOutlet weak var emailValueLabel: UILabel!
    @IBOutlet weak var treatmentAddressValueLabel: UILabel!
    @IBOutlet weak var postcodeValueLabel: UILabel!
    @IBOutlet weak var treatmentTimeValueLabel: UILabel!
    @IBOutlet weak var childrenCheckbox: UIImageView!
    @IBOutlet weak var employeesCheckbox: UIImageView!
    @IBOutlet weak var publicCheckbox: UIImageView!
    @IBOutlet weak var petAnimalsCheckbox: UIImageView!
    @IBOutlet weak var protectedWilfLifeCheckbox: UIImageView!
    @IBOutlet weak var openFoodCheckbox: UIImageView!
    @IBOutlet weak var bodiesCheckbox: UIImageView!
    @IBOutlet weak var droppingsCheckbox: UIImageView!
    @IBOutlet weak var gnawingCheckbox: UIImageView!
    @IBOutlet weak var smearCheckbox: UIImageView!
    @IBOutlet weak var groundWholeCheckbox: UIImageView!
    @IBOutlet weak var sightingCheckbox: UIImageView!
    @IBOutlet weak var inspectionContainer: UIView!
    @IBOutlet weak var inspectionValueLabel: UILabel!
    @IBOutlet weak var recommendationContainer: UIView!
    @IBOutlet weak var recommendationValueLabel: UILabel!
    @IBOutlet weak var workerSignatueImage: UIImageView!
    @IBOutlet weak var workerNameLabel: UILabel!
    @IBOutlet weak var clientSignatureImage: UIImageView!
    @IBOutlet weak var clientName: UILabel!
    @IBOutlet weak var contractDetailContainer: UIView!
    @IBOutlet weak var contractDetailHeaderContainer: UIView!
    @IBOutlet weak var safetyHeaderContainer: UIView!
    @IBOutlet weak var presenceOfContainer: UILabel!
    @IBOutlet weak var presenceOfImageview: UIImageView!
    @IBOutlet weak var evidenceContainer: UILabel!
    @IBOutlet weak var evidenceImageview: UIImageView!
    
    @IBOutlet weak var childrenLabel: UILabel!
    @IBOutlet weak var childrenImageview: UIImageView!
    @IBOutlet weak var bodiesLabel: UILabel!
    @IBOutlet weak var bodiesImageview: UIImageView!
    @IBOutlet weak var employeesLabel: UILabel!
    @IBOutlet weak var employeesImageview: UIImageView!
    @IBOutlet weak var droppingsLabel: UILabel!
    @IBOutlet weak var droppingsImageview: UIImageView!
    @IBOutlet weak var publicLabel: UILabel!
    @IBOutlet weak var publicImageview: UIImageView!
    @IBOutlet weak var gnawingLabel: UILabel!
    @IBOutlet weak var gnawingImageview: UIImageView!
    @IBOutlet weak var petLabel: UILabel!
    @IBOutlet weak var petImageview: UIImageView!
    @IBOutlet weak var smearLabel: UILabel!
    @IBOutlet weak var smearImageview: UIImageView!
    @IBOutlet weak var wildlifeLabel: UILabel!
    @IBOutlet weak var wildlifeImageview: UIImageView!
    @IBOutlet weak var groundLabel: UILabel!
    @IBOutlet weak var groundImageview: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodImageview: UIImageView!
    @IBOutlet weak var sightingLabel: UILabel!
    @IBOutlet weak var sightingImageview: UIImageView!
    
    let outputData = GlobalData.sharedInstance.outputData
    
    func initiate() {
        loadViews()
        fillData()
    }
    
    func loadViews() {
        pestTypeContainer.border()
        inspectionContainer.border()
        recommendationContainer.border()
        contractDetailContainer.border()
        contractDetailHeaderContainer.border()
        safetyHeaderContainer.border()
        
        presenceOfContainer.border()
        presenceOfImageview.border()
        evidenceContainer.border()
        evidenceImageview.border()
        bodiesLabel.border()
        childrenLabel.border()
        childrenImageview.border()
        bodiesLabel.border()
        bodiesImageview.border()
        employeesLabel.border()
        employeesImageview.border()
        droppingsLabel.border()
        droppingsImageview.border()
        publicLabel.border()
        publicImageview.border()
        gnawingLabel.border()
        gnawingImageview.border()
        petLabel.border()
        petImageview.border()
        smearLabel.border()
        smearImageview.border()
        wildlifeLabel.border()
        wildlifeImageview.border()
        groundLabel.border()
        groundImageview.border()
        foodLabel.border()
        foodImageview.border()
        sightingLabel.border()
        sightingImageview.border()
    }
    
    func fillData() {
        routineCheckbox.image = (outputData.pestControlData?.routine ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        followUpCheckbox.image = (outputData.pestControlData?.followUp ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        CalloutCheckbox.image = (outputData.pestControlData?.callout ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        
        reportValueLabel.text = outputData.pestControlData?.reportNumber
        zoneValueLabel.text = outputData.pestControlData?.zone
        
        landlordNameValueLabel.text = outputData.pestControlData?.landlordName
        propertySizeValueLabel.text = outputData.pestControlData?.propertySize
        landlordPayValueLabel.text = outputData.pestControlData?.landlordPay
        agreedPriceValueLabel.text = outputData.pestControlData?.agreedPrice
        receivedCheckbox.image = (outputData.pestControlData?.received ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        
        miceCheckbox.image = (outputData.pestType?.mice ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        antsCheckbox.image = (outputData.pestType?.ants ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        fleasCheckbox.image = (outputData.pestType?.fleas ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        ratsCheckbox.image = (outputData.pestType?.rats ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        cockroachCheckbox.image = (outputData.pestType?.cockroach ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        bedbugCheckbox.image = (outputData.pestType?.bedbug ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked)
        otherValueLabel.text = ""
        difenacoumUnitTextfield.text = outputData.pestType?.difenacoumUnit
        brodifacoumUnitTextfield.text = outputData.pestType?.brodifacoumUnit
        bromadioloneUnitTextfield.text = outputData.pestType?.bromadioloneUnit
        
        indoxacarbCheckbox.setImage((outputData.pestType?.indoxacarb ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked), for: .normal)
        bendiocarbCheckbox.setImage((outputData.pestType?.bendiocarb ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked), for: .normal)
        cypermethrinCheckbox.setImage((outputData.pestType?.cypermethrin ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked), for: .normal)
        tetramethrinCheckbox.setImage((outputData.pestType?.tetramethrin ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked), for: .normal)
        fenprieCheckbox.setImage((outputData.pestType?.fenprie ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked), for: .normal)
        otherCheckbox.setImage((outputData.pestType?.other ?? false) ? UIImage(resource: .checkboxChecked) : UIImage(resource: .checkboxUnchecked), for: .normal)
        
        nameValueLabel.text = outputData.personalInfo?.name
        telephoneValueLabel.text = outputData.personalInfo?.telephone
        emailValueLabel.text = outputData.personalInfo?.email
        treatmentAddressValueLabel.text = outputData.personalInfo?.treatmentAddress
        postcodeValueLabel.text = outputData.personalInfo?.postcode
        treatmentTimeValueLabel.text = outputData.personalInfo?.treatmentTime
        
        childrenCheckbox.image = (outputData.assessmentData?.children ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        employeesCheckbox.image = (outputData.assessmentData?.employees ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        publicCheckbox.image = (outputData.assessmentData?.publicCheck ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        petAnimalsCheckbox.image = (outputData.assessmentData?.petAnimals ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        protectedWilfLifeCheckbox.image = (outputData.assessmentData?.protectedWildLife ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        openFoodCheckbox.image = (outputData.assessmentData?.openFood ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        bodiesCheckbox.image = (outputData.assessmentData?.bodies ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        droppingsCheckbox.image = (outputData.assessmentData?.droppings ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        gnawingCheckbox.image = (outputData.assessmentData?.gnawing ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        smearCheckbox.image = (outputData.assessmentData?.smear ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        groundWholeCheckbox.image = (outputData.assessmentData?.groundHole ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        sightingCheckbox.image = (outputData.assessmentData?.sighting ?? false) ? UIImage(resource: .cross) : nil // UIImage(resource: .checkboxUnchecked)
        
        inspectionValueLabel.text = outputData.inspection
        recommendationValueLabel.text = outputData.recommendation
        
//        inspectionValueLabel.underline()
//        inspectionValueLabel.underlineAndLineHeight(lineHeightMultiply: 1.5, heading: "Inspection")
//        recommendationValueLabel.underline()
//        recommendationValueLabel.underlineAndLineHeight(lineHeightMultiply: 1.5, heading: "Recommendation")
        
        
        workerNameLabel.text = outputData.signatureData?.workerName
        
        if let workerSignature = outputData.signatureData?.workerSignature {
            workerSignatueImage.image = UIImage(data: workerSignature)
        }
        
        clientName.text = outputData.signatureData?.clientName
        
        if let clientSignature = outputData.signatureData?.clientSignature {
            clientSignatureImage.image = UIImage(data: clientSignature)
        }
        
    }
}
