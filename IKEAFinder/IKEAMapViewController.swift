//
//  IKEAMapViewController.swift
//  IKEAFinder
//
//  Created by A. Clingerman on 10/8/18.
//  Copyright © 2018 Machioud, Sanni. All rights reserved.
//

import UIKit
import MapKit

class IKEAMapViewController: UIViewController {
    var selectedIKEA: IKEA!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
    self.navigationItem.title = "IKEA" + selectedIKEA.storeName
    }
    
}
