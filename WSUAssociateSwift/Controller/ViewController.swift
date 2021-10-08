//
//  ViewController.swift
//  WSUAssociateSwift
//
//  Created by Erik Buck on 9/16/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let delegate = UIApplication.shared.delegate as! AppDelegate
    if(1 == tableView.tag){
        return delegate.employees.count
    }
    return delegate.departments.count
      //return (UIApplication.shared.delegate as! AppDelegate).departments.count
        //number of employees or departments
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let index = indexPath.row
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
    
    //set up employee table
    if(1 == tableView.tag){
        let employees = (UIApplication.shared.delegate as! AppDelegate).employees
        let lastName = Array(employees)[index].value(forKey:"lastName") as! String
        let firstName = Array(employees)[index].value(forKey:"firstName") as! String
     
        // Configure the cell’s contents.
        cell.textLabel!.text = lastName + ", " + firstName
        
    }else{
    //set up department table
      let departments = (UIApplication.shared.delegate as! AppDelegate).departments
      let name = Array(departments)[index].value(forKey:"name") as! String
        
      let sortedNames = name.sorted()
      

        cell.textLabel!.text = name
    }
      // Configure the cell’s contents.
      
      return cell
   }
}

