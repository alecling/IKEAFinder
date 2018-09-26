//
//  IKEATableViewController.swift
//  IKEAFinder
//
//  Created by J. SANNI on 9/24/18.
//  Copyright © 2018 Machioud, Sanni. All rights reserved.
//

import UIKit

class IKEATableViewController : UITableViewController{
    
    //theare two requires view controlers
    //the first tells how many rows to display
    
    //! MEANS THIS IS NOT ALLOW TO BE NILL, SO THE ARRAY NEEDS TO HAVE DATA, BUT WE'RE NOT FORCE UNWRAPPING ANYTHING
    var IKEABucket: IKEADataStore!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return IKEABucket.allIKEAs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //find a reusable cell from the story board
        
        let thisCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        //bind a specific instance of the ikea class (stored in our bucket) To the table cell we found
        
        let thisIKEA = IKEABucket.allIKEAs[indexPath.row] //.row is an interger identifier of the row
        
        //Display information to the user
        
        thisCell.textLabel?.text = thisIKEA.storeName
        thisCell.detailTextLabel?.text = thisIKEA.country
        
        //return the formatted cell
        
        return thisCell
    }
}

