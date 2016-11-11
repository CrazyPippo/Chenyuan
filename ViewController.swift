//
//  ViewController.swift
//  Chenyuan
//
//  Created by Pippo on 4/27/16.
//  Copyright © 2016 Pippo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var professional: UIButton!
    @IBOutlet weak var personal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()
        // professional button
        professional.layer.borderColor = UIColor.blackColor().CGColor
        professional.layer.borderWidth = 1.5
        professional.layer.cornerRadius = 5
        // personal button
        personal.layer.borderColor = UIColor.blackColor().CGColor
        personal.layer.borderWidth = 1.5
        personal.layer.cornerRadius = 5
        // change navigation bar color
        navigationController?.navigationBar.barTintColor = UIColor.orangeColor()
    }

    override func viewWillAppear(animated: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor.orangeColor()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

