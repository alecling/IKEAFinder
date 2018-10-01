//
//  IKEADetailViewController.swift
//  IKEAFinder
//
//  Created by J. SANNI on 9/24/18.
//  Copyright © 2018 Machioud, Sanni. All rights reserved.
//

import UIKit

class IKEADetailViewController: UIViewController{
    
    @IBOutlet weak var lblStoreName: UILabel!
    var selectedIKEA: IKEA!
    
    override func viewWillAppear(_ animated: Bool) {
        print(selectedIKEA.storeName)
        
        lblStoreName.text = selectedIKEA.storeName
        
    }
}
