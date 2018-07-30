//
//  ViewController.swift
//  3
//
//  Created by 劉奕伶 on 2018/7/30.
//  Copyright © 2018年 Appwork School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AccountText: UITextField!
    
    
     var segmentedSender: Int = 0
    
    @IBAction func SegmentController(_ sender: UISegmentedControl) {
        
        segmentedSender = sender.selectedSegmentIndex
        
        
        
        
        
        
       
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

