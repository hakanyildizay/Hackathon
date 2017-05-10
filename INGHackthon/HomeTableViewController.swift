//
//  HomeTableViewController.swift
//  INGHackthon
//
//  Created by Hakan Yildizay [Mobil Yazilim  Servisi] on 27/04/2017.
//  Copyright © 2017 ING BANK. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.tableView.estimatedRowHeight = 55.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        let image = UIImage(named: "ingLogo")
        let imageView = UIImageView(image: image)
        self.navigationItem.titleView = imageView
        //248 243 237
        self.tableView.backgroundColor = UIColor.init(red: 248.0/255.0, green: 243.0/255.0, blue: 237.0/255.0, alpha: 1.0)
        
        Alamofire.request(ROOT_URL+"/api/Customer").responseJSON { (response : DataResponse<Any>) in
            
            print(response.response ?? "no response")
            print(response.result)
            
            if let value = response.result.value{
                
                if let arrayValue = value as? Array<Any>,
                    let dictionary = arrayValue[0] as? Dictionary<String,Any>
                {
                    
                    let cityName = dictionary["city"] as? String
                    print("CityName \(cityName)")
                    
                    
                }else if let dictValue = value as? Dictionary<String, Any>{
                    print("JSON \(dictValue))")
                }
                
            }
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (section == 0) ? 1 : 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = (indexPath.section == 0) ? "headerCell" : "infoCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let infoCell = cell as? HomeInfoTableViewCell{
            infoCell.lblTitle.text = "Some Text"
        }else if let headerCell = cell as? HomeCollectionViewTableViewCell{
            
        }
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let sectionHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 30.0))
        sectionHeaderView.backgroundColor = UIColor.clear
        let label = UILabel(frame: sectionHeaderView.frame)
        label.text = "Some Header Text"
        label.textColor = UIColor(red: 0.0, green: 57.0/155.0, blue: 118.0/255.0, alpha: 1.0)
        label.font = UIFont.init(name: "Helvetica-Neue", size: 16.0)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        sectionHeaderView.addSubview(label)
        
        let verticalConstraint = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: sectionHeaderView, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        sectionHeaderView.addConstraint(verticalConstraint)
        
        let leftConstraint = NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: sectionHeaderView, attribute: .leading, multiplier: 1.0, constant: 14)
        sectionHeaderView.addConstraint(leftConstraint)
        
        sectionHeaderView.setNeedsUpdateConstraints()
        sectionHeaderView.setNeedsLayout()
        
        return sectionHeaderView

    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
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
