//
//  LoginViewController.swift
//  Swift-Box
//
//  Created by Moxi_Mac on 17/08/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      
      self.view.backgroundColor = UIColor.blueColor()
      self.title = "Login View"
      
   }
   
   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   //Data Source for table View
   
   func getItemList() ->NSArray {
      
      let array:NSArray = NSArray(objects: "Login","Image Scroller")
      return array
   }
   
}

