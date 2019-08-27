//
//  PopUpViewController.swift
//  appTestForWork
//
//  Created by fathy  on 8/19/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    @IBOutlet weak var lablePopUp: UILabel!
    var label: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lablePopUp.text = label
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapToClose))
        view.addGestureRecognizer(tap)

    }
    
    @objc func tapToClose() {
        dismiss(animated: true, completion: nil)
    }
    
}
