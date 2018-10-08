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
   
    @IBOutlet weak var lblStoreNumber: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    
    @IBOutlet weak var lblZipCode: UILabel!
    
    @IBOutlet weak var lblCountry: UILabel!
    
    @IBOutlet weak var lblTelephone: UILabel!
    
    @IBOutlet weak var lblSize: UILabel!
    
    @IBOutlet weak var lblNumberOfRooms: UILabel!
    
    @IBOutlet weak var lblNumberOfHomes: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        print(selectedIKEA.storeName)
        print(selectedIKEA.address)
        
        lblStoreName.text = selectedIKEA.storeName
        lblStoreNumber.text = String (selectedIKEA.storeNumber)
        lblAddress.text = selectedIKEA.address
        lblCity.text = selectedIKEA.city
        lblZipCode.text = selectedIKEA.zipCode
        lblCountry.text = selectedIKEA.country
        lblTelephone.text = selectedIKEA.telephone
        lblSize.text = String (selectedIKEA.size)
        lblNumberOfRooms.text = String (selectedIKEA.roomSettings)
        lblNumberOfHomes.text = String (selectedIKEA.realLifeHomes)
      
    }
    
    //segue will engage
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        //get a reference to our segue target
        let mapView = segue.destination as! IKEAMapViewController
        
        
            mapView.selectedIKEA = selectedIKEA
            
        }
}
    

