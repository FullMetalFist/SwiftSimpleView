//
//  TableViewController.swift
//  SimpleView
//
//  Created by Michael Vilabrera on 5/14/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let kCellIdentifier: String = "Cell Identifier"
    
    var firstCell: FirstTableViewCell = FirstTableViewCell()
    var secondCell: SecondTableViewCell = SecondTableViewCell()
    var thirdCell: ThirdTableViewCell = ThirdTableViewCell()
    var fourthCell: FourthTableViewCell = FourthTableViewCell()
    var fifthCell: FifthTableViewCell = FifthTableViewCell()
    
    
    
    // second cell contents
    var secondCellLabelTitle: UILabel = UILabel()
    var secondCellLabelTipAmount: UILabel = UILabel()
    // add faceView, slider
    
    // third cell contents
    var thirdCellLabelTitle: UILabel = UILabel()
    var thirdCellLabelNumberOfPeople: UILabel = UILabel()
    // add animation, custom button (up/down)
    
    // fourth cell contents
    var fourthCellLabelTitle: UILabel = UILabel()
    var fourthCellEachPayAmount: UILabel = UILabel()
    var venmoButton: UIButton = UIButton()
    
    // fifth cell contents
    var fifthCellLabelTitle: UILabel = UILabel()
    var fifthCellTotalPayment: UILabel = UILabel()
    
    override func loadView() {
        super.loadView()
        
        // set the title
        self.title = "Title"
        
        // construct first cell, section 0 cell 0
        self.firstCell.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
//        self.firstCellLabelTitle = UILabel(frame: CGRectInset(self.firstCell.contentView.bounds, 15, 0))
//        self.firstCellTextField = UITextField(frame: CGRectInset(self.firstCell.contentView.bounds, 15, 70))
//        self.firstCellTextField.placeholder = "Bill Amount"
//        self.firstCell.addSubview(self.firstCellLabelTitle)
//        self.firstCell.addSubview(self.firstCellTextField)
        
        // construct second cell, section 0 cell 1
        self.secondCell.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.6, alpha: 0.5)
        
        // construct third cell, section 1 cell 0
        self.thirdCell.backgroundColor = UIColor(red: 1.0, green: 0.6, blue: 1.0, alpha: 0.5)
        
        // construct fourth cell, section 1 cell 1
        self.fourthCell.backgroundColor = UIColor(red: 0.6, green: 1.0, blue: 1.0, alpha: 0.5)
        
        // construct fifth cell, section 2 cell 0
        self.fifthCell.backgroundColor = UIColor(red: 0.6, green: 1.0, blue: 0.6, alpha: 0.5)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.tableView.registerClass(FirstTableViewCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
        self.tableView.registerClass(SecondTableViewCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
        self.tableView.registerClass(ThirdTableViewCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
        self.tableView.registerClass(FourthTableViewCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
        self.tableView.registerClass(FifthTableViewCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        switch (section) {
            
        case 0: return 2
        case 1: return 2
        case 2: return 1
        default: fatalError("Unknown number of sections")
            
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier, forIndexPath: indexPath) as! UITableViewCell
        
        cell.layoutIfNeeded()
        
        // Configure the cell...
        switch (indexPath.section)
        {
        case 0:
            switch(indexPath.row)
            {
            case 0:
                return firstCell
            case 1:
                return secondCell
            default:
                fatalError("Unknown Row")
            }
        case 1:
            switch(indexPath.row)
            {
            case 0:
                return thirdCell
            case 1:
                return fourthCell
            default: fatalError("Unknown Row")
            }
        case 2:
            return fifthCell
        default:
            fatalError("Unknown Section")
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
