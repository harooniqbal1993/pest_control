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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myView = Bundle.main.loadNibNamed("PDFLayout", owner: nil, options: nil)![0] as! UIView
        if let view = myView as? PDFLayout {
            view.fillData()
        }
//        scrollView.contentSize.width = myView.frame.width
//        print(myView.frame.width)
//        contentView.frame.size.width = myView.frame.width
        
        contentView.addSubview(myView)
        
        let path = contentView.exportAsPdfFromView()
        print(path)
    }
    
    @IBAction func downloadTapped(_ sender: UIButton) {
        let path = contentView.exportAsPdfFromView()
        print(path)
    }
    
}
