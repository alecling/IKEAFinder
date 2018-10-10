//
//  IKEATableViewController.swift
//  IKEAFinder
//
//  Created by A. Clingerman on 9/24/18.
//  Copyright © 2018 Machioud, Sanni. All rights reserved.
//

import UIKit

class IKEATableViewController : UITableViewController{
    
    //theare two requires view controlers
    //the first tells how many rows to display
    
    //! MEANS THIS IS NOT ALLOW TO BE NILL, SO THE ARRAY NEEDS TO HAVE DATA, BUT WE'RE NOT FORCE UNWRAPPING ANYTHING
    var IKEABucket: IKEADataStore!
    
    //this is to make the
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get the height of the status bar
      let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
      let insets = UIEdgeInsets (top: statusBarHeight, left: 0, bottom: 0, right: 0)
        
    //apply insets to the tableView
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "detailView" {
        
        //get a reference to our segue target
        let detailView = segue.destination as! IKEADetailViewController
        
        //FIGURED OUT WHICH TABLE WAS CLIKCED
        if let indexPath = self.tableView.indexPathForSelectedRow {
            
            //find the specific IKEA object corresponding to the cell
            let selectedIKEA = IKEABucket.allIKEAs[indexPath.row]
            
            //MOVE A COPY OF THE INSTANCE OF THE SELECTED IKEA CLASS
            //FROM THIS VIEW CONTROLLER TO THE NEXT VIEW CONTROLLER
            
            detailView.selectedIKEA = selectedIKEA
            
        }
    }
}

}
