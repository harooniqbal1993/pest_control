//
//  AssessmentViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 18/02/2025.
//

import UIKit

struct AssessmentData {
    var children: Bool = false
    var employees: Bool = false
    var publicCheck: Bool = false
    var petAnimals: Bool = false
    var protectedWildLife: Bool = false
    var openFood: Bool = false
    
    var bodies: Bool = false
    var droppings: Bool = false
    var gnawing: Bool = false
    var smear: Bool = false
    var groundHole: Bool = false
    var sighting: Bool = false
    var holeInCeiling: Bool = false
    var holeAroundPipe: Bool = false
    var chewedElectricWire: Bool = false
}

class AssessmentViewController: UIViewController {

    @IBOutlet weak var childrenCheckbox: UIButton!
    @IBOutlet weak var employeesCheckbox: UIButton!
    @IBOutlet weak var publicCheckbox: UIButton!
    @IBOutlet weak var petAnimalsCheckbox: UIButton!
    @IBOutlet weak var protectedWildlifeCheckbox: UIButton!
    @IBOutlet weak var openFoodCheckbox: UIButton!
    
    @IBOutlet weak var childrenLabel: UILabel!
    @IBOutlet weak var employeesLabel: UILabel!
    @IBOutlet weak var publicLabel: UILabel!
    @IBOutlet weak var petAnimalLabel: UILabel!
    @IBOutlet weak var protectedWildlifeLabel: UILabel!
    @IBOutlet weak var openFoodLabel: UILabel!
    
    @IBOutlet weak var bodiesCheckbox: UIButton!
    @IBOutlet weak var dropingsCheckbox: UIButton!
    @IBOutlet weak var gnawingCheckbox: UIButton!
    @IBOutlet weak var smearCheckbox: UIButton!
    @IBOutlet weak var groundHoleCheckbox: UIButton!
    @IBOutlet weak var sightingCheckbox: UIButton!
    @IBOutlet weak var holeInCeilingCheckbox: UIButton!
    @IBOutlet weak var holeAroundPipeCheckbox: UIButton!
    @IBOutlet weak var chewedElectricPipeCheckbox: UIButton!
    
    @IBOutlet weak var bodiesLabel: UILabel!
    @IBOutlet weak var dropingsLabel: UILabel!
    @IBOutlet weak var gnawingLabel: UILabel!
    @IBOutlet weak var smearLabel: UILabel!
    @IBOutlet weak var groundHoleLabel: UILabel!
    @IBOutlet weak var sightingLabel: UILabel!
    @IBOutlet weak var holeInCeilingLabel: UILabel!
    @IBOutlet weak var holeAroundPipeLabel: UILabel!
    @IBOutlet weak var chewedElectricWireLabel: UILabel!
    
    
    var assessmentData = AssessmentData()
    
    var childrenCheck: Bool = false
    var employees: Bool = false
    var publicCheck: Bool = false
    var petAnimals: Bool = false
    var protectedWildLife: Bool = false
    var openFood: Bool = false
    
    var bodies: Bool = false
    var droppings: Bool = false
    var gnawing: Bool = false
    var smear: Bool = false
    var groundHole: Bool = false
    var sighting: Bool = false
    var holeInCeiling: Bool = false
    var holeAroundPipe: Bool = false
    var chewedElectricWire: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        GlobalData.sharedInstance.outputData.assessmentData = assessmentData
    }
    
    func configure() {
        addTapGesture()
    }
    
    func addTapGesture() {
        let childrenTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let employeesTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let publicTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let petAnimalsTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let protectedWildlifeTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let openFoodTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        
        let bodiesTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let dropingsTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let gnawingTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let smearTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let groundHoleTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let sighingTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let holeInCeilingTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let holeAroundPipeTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        let chewedElectricWireTapGesture = UITapGestureRecognizer(target: self, action: #selector(doSomethingOnTap))
        
        childrenLabel.isUserInteractionEnabled = true
        childrenLabel.addGestureRecognizer(childrenTapGesture)
        
        employeesLabel.isUserInteractionEnabled = true
        employeesLabel.addGestureRecognizer(employeesTapGesture)
        
        publicLabel.isUserInteractionEnabled = true
        publicLabel.addGestureRecognizer(publicTapGesture)
        
        petAnimalLabel.isUserInteractionEnabled = true
        petAnimalLabel.addGestureRecognizer(petAnimalsTapGesture)
        
        protectedWildlifeLabel.isUserInteractionEnabled = true
        protectedWildlifeLabel.addGestureRecognizer(protectedWildlifeTapGesture)
        
        openFoodLabel.isUserInteractionEnabled = true
        openFoodLabel.addGestureRecognizer(openFoodTapGesture)
        
        bodiesLabel.isUserInteractionEnabled = true
        bodiesLabel.addGestureRecognizer(bodiesTapGesture)
        
        dropingsLabel.isUserInteractionEnabled = true
        dropingsLabel.addGestureRecognizer(dropingsTapGesture)
        
        gnawingLabel.isUserInteractionEnabled = true
        gnawingLabel.addGestureRecognizer(gnawingTapGesture)
        
        smearLabel.isUserInteractionEnabled = true
        smearLabel.addGestureRecognizer(smearTapGesture)
        
        groundHoleLabel.isUserInteractionEnabled = true
        groundHoleLabel.addGestureRecognizer(groundHoleTapGesture)
        
        sightingLabel.isUserInteractionEnabled = true
        sightingLabel.addGestureRecognizer(sighingTapGesture)
        
        holeInCeilingLabel.isUserInteractionEnabled = true
        holeInCeilingLabel.addGestureRecognizer(holeInCeilingTapGesture)
        
        holeAroundPipeLabel.isUserInteractionEnabled = true
        holeAroundPipeLabel.addGestureRecognizer(holeAroundPipeTapGesture)
        
        chewedElectricWireLabel.isUserInteractionEnabled = true
        chewedElectricWireLabel.addGestureRecognizer(chewedElectricWireTapGesture)
    }
    
    func handleCheckboxTap(tag: Int) {
        switch tag {
        case 1:
            childrenCheck = !childrenCheck
            assessmentData.children = childrenCheck
            
            if childrenCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                childrenCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                childrenCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 2:
            employees = !employees
            assessmentData.employees = employees
            
            if employeesCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                employeesCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                employeesCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 3:
            publicCheck = !publicCheck
            assessmentData.publicCheck = publicCheck
            
            if publicCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                publicCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                publicCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 4:
            petAnimals = !petAnimals
            assessmentData.petAnimals = petAnimals
            
            if petAnimalsCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                petAnimalsCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                petAnimalsCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 5:
            protectedWildLife = !protectedWildLife
            assessmentData.protectedWildLife = protectedWildLife
            
            if protectedWildlifeCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                protectedWildlifeCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                protectedWildlifeCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 6:
            openFood = !openFood
            assessmentData.openFood = openFood
            
            if openFoodCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                openFoodCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                openFoodCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 7:
            bodies = !bodies
            assessmentData.bodies = bodies
            
            if bodiesCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                bodiesCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                bodiesCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 8:
            droppings = !droppings
            assessmentData.droppings = droppings
            
            if dropingsCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                dropingsCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                dropingsCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 9:
            gnawing = !gnawing
            assessmentData.gnawing = gnawing
            
            if gnawingCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                gnawingCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                gnawingCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 10:
            smear = !smear
            assessmentData.smear = smear
            
            if smearCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                smearCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                smearCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 11:
            groundHole = !groundHole
            assessmentData.groundHole = groundHole
            
            if groundHoleCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                groundHoleCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                groundHoleCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 12:
            sighting = !sighting
            assessmentData.sighting = sighting
            
            if sightingCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                sightingCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                sightingCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 13:
            holeInCeiling = !holeInCeiling
            assessmentData.holeInCeiling = holeInCeiling
            
            if holeInCeilingCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                holeInCeilingCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                holeInCeilingCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 14:
            holeAroundPipe = !holeAroundPipe
            assessmentData.holeAroundPipe = holeAroundPipe
            
            if holeAroundPipeCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                holeAroundPipeCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                holeAroundPipeCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        case 15:
            chewedElectricWire = !chewedElectricWire
            assessmentData.chewedElectricWire = chewedElectricWire
            
            if chewedElectricPipeCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                chewedElectricPipeCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                chewedElectricPipeCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
            break
            
        default:
            sighting = !sighting
            assessmentData.sighting = sighting
            
            if sightingCheckbox.currentImage == UIImage(resource: .checkboxChecked) {
                sightingCheckbox.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
            } else {
                sightingCheckbox.setImage(UIImage(resource: .checkboxChecked), for: .normal)
            }
        }
    }
    
    @objc func doSomethingOnTap(_ gesture: UITapGestureRecognizer) {
        print("tapped")
        if let tappedLabel = gesture.view as? UILabel {
            print("Tapped UILabel tag: \(tappedLabel.tag)")
            handleCheckboxTap(tag: tappedLabel.tag)
        }
    }
    
    @IBAction func checkboxTapped(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            childrenCheck = !childrenCheck
            assessmentData.children = childrenCheck
            break
            
        case 2:
            employees = !employees
            assessmentData.employees = employees
            break
            
        case 3:
            publicCheck = !publicCheck
            assessmentData.publicCheck = publicCheck
            break
            
        case 4:
            petAnimals = !petAnimals
            assessmentData.petAnimals = petAnimals
            break
            
        case 5:
            protectedWildLife = !protectedWildLife
            assessmentData.protectedWildLife = protectedWildLife
            break
            
        case 6:
            openFood = !openFood
            assessmentData.openFood = openFood
            break
            
        case 7:
            bodies = !bodies
            assessmentData.bodies = bodies
            break
            
        case 8:
            droppings = !droppings
            assessmentData.droppings = droppings
            break
            
        case 9:
            gnawing = !gnawing
            assessmentData.gnawing = gnawing
            break
            
        case 10:
            smear = !smear
            assessmentData.smear = smear
            break
            
        case 11:
            groundHole = !groundHole
            assessmentData.groundHole = groundHole
            break
            
        case 12:
            sighting = !sighting
            assessmentData.sighting = sighting
            break
            
        case 13:
            holeInCeiling = !holeInCeiling
            assessmentData.holeInCeiling = holeInCeiling
            break
            
        case 14:
            holeAroundPipe = !holeAroundPipe
            assessmentData.holeAroundPipe = holeAroundPipe
            break
            
        case 15:
            chewedElectricWire = !chewedElectricWire
            assessmentData.chewedElectricWire = chewedElectricWire
            break
            
        default:
            sighting = !sighting
            assessmentData.sighting = sighting
        }
        
        if sender.currentImage == UIImage(resource: .checkboxChecked) {
            sender.setImage(UIImage(resource: .checkboxUnchecked), for: .normal)
        } else {
            sender.setImage(UIImage(resource: .checkboxChecked), for: .normal)
        }
    }
    
}
