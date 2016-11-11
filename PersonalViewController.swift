//
//  PersonalViewController.swift
//  Chenyuan
//
//  Created by Pippo on 4/27/16.
//  Copyright © 2016 Pippo. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var sections: [Section] = []
    let database: PersonalDatabase = PersonalDatabase()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].cellNames.count
    }
    
    // create cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(sections[indexPath.section].sectionName, forIndexPath: indexPath)
        cell.textLabel?.text = sections[indexPath.section].cellNames[indexPath.row]
        cell.detailTextLabel?.text = sections[indexPath.section].cellDetail[indexPath.row]
        
        // assign image to each cell
        assignCellImage(indexPath.section, row: indexPath.row, cell: &cell)
        
        // handle "and more..." cell
        if indexPath.section == 0 && indexPath.row == 4 {
            cell.userInteractionEnabled = true
            cell.selectionStyle = UITableViewCellSelectionStyle.Default
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            cell.detailTextLabel?.text = ""
        }
        
        return cell
    }
   
    // handle the delegate events: "and more..." cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let alert: UIAlertController = UIAlertController(title: "This is a bit awkward...", message: "I am single lol", preferredStyle: UIAlertControllerStyle.Alert)
        let action: UIAlertAction = UIAlertAction(title: "OK...", style: UIAlertActionStyle.Default) { (UIAlertAction) in}
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: {})
        // get rid of the selection after selecting
        tableView.cellForRowAtIndexPath(indexPath)?.selectionStyle = UITableViewCellSelectionStyle.None
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return sections.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sections[section].sectionName
    }
    
    func assignCellImage(section: Int, row: Int, inout cell: UITableViewCell){
        switch section {
        // identity section
        case 0:
            
            switch row {
            case 0:
                cell.imageView?.image = UIImage(named: "origin")
                break
            case 1:
                cell.imageView?.image = UIImage(named: "residence")
                break
            case 2:
                cell.imageView?.image = UIImage(named: "age")
                break
            case 3:
                cell.imageView?.image = UIImage(named: "nickname")
                break
            case 4:
                cell.imageView?.image = UIImage(named: "still...")
                break
            default:
                break
            }
            // hobby section
        case 1:
            switch row {
            case 0:
                cell.imageView?.image = UIImage(named: "camera")
                break
            case 1:
                cell.imageView?.image = UIImage(named: "guitar")
                break
            case 2:
                cell.imageView?.image = UIImage(named: "swimming")
                break
            case 3:
                cell.imageView?.image = UIImage(named: "programming")
                break
            default:
                break
            }

          // traveled section
        case 2:
            
            switch row {
            case 0:
                cell.imageView?.image = UIImage(named: "usa")
                break
            case 1:
                cell.imageView?.image = UIImage(named: "turkey")
                break
            case 2:
                cell.imageView?.image = UIImage(named: "australia")
                break
            case 3:
                cell.imageView?.image = UIImage(named: "england")
                break
            case 4:
                cell.imageView?.image = UIImage(named: "ireland")
                break
            default:
                break
            }
            
        default:
            break
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        database.initialize(&sections)
        // change navigation bar color
        navigationController?.navigationBar.barTintColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
