//
//  PageViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 18/02/2025.
//

import UIKit

struct OutputData {
    var pestControlData: PestControlData?
    var pestType: PestType?
    var personalInfo: PersonalInfo?
    var assessmentData: AssessmentData?
    var inspection: String?
    var recommendation: String?
    var signatureData: SignatureData?
}

final class GlobalData {
    static let sharedInstance = GlobalData()
    
    var outputData = OutputData()
    
    private init() { }
}

class PageViewController: UIViewController {

    @IBOutlet weak var stepCountLabel: UILabel!
    @IBOutlet weak var pagingView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    var pageController: UIPageViewController?
    var viewControllers: [UIViewController] = []
    var currentPage: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
        setupPageController()
    }
    
    private func setupPageController() {
        self.pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
//        self.pageController?.dataSource = self
        self.pageController?.delegate = self
        self.pageController?.view.backgroundColor = .clear
        //        self.pageController?.view.frame = pagingView.frame
        self.addChild(self.pageController!)
        self.pagingView.addSubview(self.pageController!.view)
        configureFirstVC()
        self.pageController?.didMove(toParent: self)
        self.pageController?.view.translatesAutoresizingMaskIntoConstraints = false
        self.pageController?.view.topAnchor.constraint(equalTo: pagingView!.topAnchor).isActive = true
        self.pageController?.view.bottomAnchor.constraint(equalTo: pagingView!.bottomAnchor).isActive = true
        self.pageController?.view.leadingAnchor.constraint(equalTo: pagingView!.leadingAnchor, constant: 0).isActive = true
        self.pageController?.view.trailingAnchor.constraint(equalTo: pagingView!.trailingAnchor, constant: 0).isActive = true
    }
    
    func configureFirstVC() {
        self.pageController?.setViewControllers([viewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
    func configureViewControllers() {
        let pestControlViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PestControlViewController") as! PestControlViewController
        let chemicalUsedViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChemicalUsedViewController") as! ChemicalUsedViewController
        let personalInformationViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PersonalInformationViewController") as! PersonalInformationViewController
        let assessmentViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AssessmentViewController") as! AssessmentViewController
        let inspectionViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "InspectionViewController") as! InspectionViewController
        let signatureViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignatureViewController") as! SignatureViewController
        
        viewControllers = [pestControlViewController, chemicalUsedViewController, personalInformationViewController, assessmentViewController, inspectionViewController, signatureViewController]
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if currentPage == viewControllers.count - 1 {
            let outputViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OutputViewController") as! OutputViewController
            outputViewController.modalPresentationStyle = .fullScreen
            self.present(outputViewController, animated: true)
            return
        }
        
        if currentPage < viewControllers.count - 1 {
            currentPage = currentPage + 1
            stepCountLabel.text = "STEP \(currentPage + 1) of \(viewControllers.count)"
            pageController?.setViewControllers([viewControllers[currentPage]], direction: .forward, animated: true)
        }
    }
    
}

extension PageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllers.lastIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex: Int = index - 1
        
        guard previousIndex >= 0 else { return nil}
        guard previousIndex < viewControllers.count else { return nil }
        currentPage = index - 1
//        selectedTab = previousIndex
        return viewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllers.lastIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex: Int = index + 1
        
        guard previousIndex >= 0 else { return nil }
        guard previousIndex < viewControllers.count else { return nil }
        currentPage = index + 1
//        selectedTab = previousIndex
        return viewControllers[previousIndex]
    }
}
