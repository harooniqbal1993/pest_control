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
}

class AssessmentViewController: UIViewController {

    @IBOutlet weak var childrenCheckbox: UIButton!
    @IBOutlet weak var employeesCheckbox: UIButton!
    @IBOutlet weak var publicCheckbox: UIButton!
    @IBOutlet weak var petAnimalsCheckbox: UIButton!
    @IBOutlet weak var protectedWildlifeCheckbox: UIButton!
    @IBOutlet weak var openFoodCheckbox: UIButton!
    
    @IBOutlet weak var bodiesCheckbox: UIButton!
    @IBOutlet weak var dropingsCheckbox: UIButton!
    @IBOutlet weak var gnawingCheckbox: UIButton!
    @IBOutlet weak var smearCheckbox: UIButton!
    @IBOutlet weak var groundHoleCheckbox: UIButton!
    @IBOutlet weak var sightingCheckbox: UIButton!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        GlobalData.sharedInstance.outputData.assessmentData = assessmentData
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
