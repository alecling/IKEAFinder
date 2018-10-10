//
//  IKEAMapViewController.swift
//  IKEAFinder
//
//  Created by A. Clingerman on 10/8/18.
//  Copyright © 2018 Machioud, Sanni. All rights reserved.
//
import Foundation
import UIKit
import MapKit
import CoreLocation

class IKEAMapViewController: UIViewController, CLLocationManagerDelegate {
    var selectedIKEA: IKEA!
    var locationManager: CLLocationManager!
    
    @IBOutlet weak var mapWorldMap: MKMapView!
    
    override func viewWillAppear(_ animated: Bool) {
//create an object of cllocationmanager
locationManager = CLLocationManager()
locationManager.delegate = self
locationManager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
locationManager.requestWhenInUseAuthorization()
locationManager.startUpdatingLocation()
        
       
}
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
    self.navigationItem.title = "IKEA" + selectedIKEA.storeName
    }
    
    //CLLOCATIONMANAGER DELEGATE
    

    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        centerMapOnLocation(locationCoord: selectedIKEA.coordinate, distance: 5000)
        
        //once we find user..n update show location
        mapWorldMap.addAnnotation(selectedIKEA)
        
    }
    
    func centerMapOnLocation(locationCoord: CLLocationCoordinate2D, distance: Double){
        let mappedRegion = MKCoordinateRegionMakeWithDistance(locationCoord, distance, distance)
        mapWorldMap.setRegion(mappedRegion, animated: true)
    }
    
}
