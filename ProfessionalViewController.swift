//
//  ProfessionalViewController.swift
//  Chenyuan
//
//  Created by Pippo on 4/27/16.
//  Copyright © 2016 Pippo. All rights reserved.
//

import UIKit

class ProfessionalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let database: ProfessionalDatabase = ProfessionalDatabase()
    var sections: [Section] = []
    var GPAClicked: Bool = false
    
    // create cells
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(sections[indexPath.section].sectionName, forIndexPath: indexPath)
        cell.textLabel?.text = sections[indexPath.section].cellNames[indexPath.row]
        cell.detailTextLabel?.text = sections[indexPath.section].cellDetail[indexPath.row]

        // change the pictures of those three cells in skill section
        if indexPath.section == 1 {
            if indexPath.row == 2 {
                cell.imageView?.image = UIImage(named: "swift")
            }
        
            if indexPath.row == 3{
                cell.imageView?.image = UIImage(named: "web")
            }
            
            if indexPath.row == 4 {
                cell.imageView?.image = UIImage(named: "camera")
            }
        }
        
        // handle GPA
        if indexPath.section == 0 && indexPath.row == 3 {
            if !GPAClicked{
                cell.userInteractionEnabled = true
                cell.accessoryType = UITableViewCellAccessoryType.DetailDisclosureButton
                cell.selectionStyle = UITableViewCellSelectionStyle.Default
            }
            else{
                cell.imageView?.image = UIImage(named: "GPA_sadFace")
                cell.detailTextLabel?.text = "3.4/4.0"
                
                
                cell.selectionStyle = UITableViewCellSelectionStyle.None
                cell.accessoryType = UITableViewCellAccessoryType.None
                cell.userInteractionEnabled = false
            }
        }
        
        return cell
     
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].cellNames.count
        
    }
    
    // handle delegate events
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        // for experience alert
        if(indexPath.section != 0){
        let alert: UIAlertController = UIAlertController(title: "Coming soon", message: "Pippo is still working on it", preferredStyle: UIAlertControllerStyle.Alert)
        
        let action: UIAlertAction = UIAlertAction(title: "Back", style: UIAlertActionStyle.Default) { (UIAlertAction) in}
        
        
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: {
        })}
        
        // GPA alert
        else{
            let alert: UIAlertController = UIAlertController(title: "Come on pal...", message: "You sure want to know my GPA?", preferredStyle: UIAlertControllerStyle.Alert)
            
            let action: UIAlertAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) in
                
                self.GPAClicked = true
                // change the cell if user clicks yes
                tableView.cellForRowAtIndexPath(indexPath)?.imageView?.image = UIImage(named: "GPA_sadFace")
                tableView.cellForRowAtIndexPath(indexPath)?.selectionStyle = UITableViewCellSelectionStyle.None
                tableView.cellForRowAtIndexPath(indexPath)?.userInteractionEnabled = false
                tableView.cellForRowAtIndexPath(indexPath)?.detailTextLabel?.text = "3.4/4.0"
                
                tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
                
            })
            
        
        
            let action2: UIAlertAction = UIAlertAction(title: "No", style: UIAlertActionStyle.Default, handler: { (action) in
                tableView.cellForRowAtIndexPath(indexPath)?.selectionStyle = UITableViewCellSelectionStyle.None
            })
            
            alert.addAction(action)
            alert.addAction(action2)
            self.presentViewController(alert, animated: true, completion: {})
        }
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].sectionName
    }
    
    
    


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // initialize the sections
        database.initialize(&sections)
        // change navigation bar color
        navigationController?.navigationBar.barTintColor = UIColor.grayColor()
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