//
//  custom.swift
//  appTestForWork
//
//  Created by fathy  on 8/18/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class custom: UIButton {

    

    override init(frame: CGRect) {
        super.init(frame: frame)
        ShadowButtom()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder )
        ShadowButtom()
    }
    func ShadowButtom() {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
    }
}


