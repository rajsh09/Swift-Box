//
//  ViewController.swift
//  Swift-Box
//
//  Created by Moxi_Mac on 17/08/14.
//  Copyright (c) 2014 ES. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

///Create referace variable  var objectName: Class name
   var tableView: UITableView?
   var tableData = []
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   
      self.view.backgroundColor = UIColor.blueColor()
      self.title = "List View"
   
      tableData = self.getItemList()
      tableView = UITableView(frame:self.view.bounds, style:.Plain)
      tableView!.dataSource = self
      tableView!.delegate = self
      self.view.addSubview(tableView)
      
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
      
      return tableData.count
      
   }
   
   // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
   // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
   
   func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
      
      let cell:UITableViewCell = UITableViewCell(style:.Default, reuseIdentifier: nil)

      cell.textLabel.text = tableData[indexPath.row] as NSString
      return cell
      
   }

   func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
 
      if(indexPath.row == 0){
         let loginViewC = LoginViewController()
          self.navigationController.pushViewController(loginViewC, animated: true)
      }
      
     
   }
   
   //Data Source for table View 
   
   func getItemList() ->NSArray {
      
      let array:NSArray = NSArray(objects: "Login","Image Scroller")
      return array
   }

}

