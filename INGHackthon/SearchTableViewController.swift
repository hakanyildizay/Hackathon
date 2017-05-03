//
//  SearchTableViewController.swift
//  INGHackthon
//
//  Created by Hakan Yildizay [Mobil Yazilim  Servisi] on 27/04/2017.
//  Copyright © 2017 ING BANK. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 75.0, height: 30.0))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Change", for: UIControlState.normal)
        button.setTitleColor(UIColor.orange, for: UIControlState.normal)
        button.sizeToFit()
        
        
        let sectionHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 30.0))
        sectionHeaderView.backgroundColor = UIColor.clear
        let label = UILabel(frame: sectionHeaderView.frame)
        label.text = "Search locatiopn: TURKEY"
        label.textColor = UIColor(red: 0.0, green: 57.0/155.0, blue: 118.0/255.0, alpha: 1.0)
        label.font = UIFont.init(name: "Helvetica-Neue", size: 16.0)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        sectionHeaderView.addSubview(label)
        
        sectionHeaderView.addSubview(button)
        
        let verticalConstraint = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: sectionHeaderView, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        sectionHeaderView.addConstraint(verticalConstraint)
        
        let leftConstraint = NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: sectionHeaderView, attribute: .leading, multiplier: 1.0, constant: 14)
        sectionHeaderView.addConstraint(leftConstraint)
        
        
        let rightConstraint = NSLayoutConstraint(item: button, attribute: .trailing, relatedBy: .equal, toItem: sectionHeaderView, attribute: .trailing, multiplier: 1.0, constant: -10.0)
        
        sectionHeaderView.addConstraint(rightConstraint)
        
        let buttonVertAlignment =  NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: sectionHeaderView, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        sectionHeaderView.addConstraint(buttonVertAlignment)
        
        
        sectionHeaderView.setNeedsUpdateConstraints()
        sectionHeaderView.setNeedsLayout()
        
        return sectionHeaderView
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
