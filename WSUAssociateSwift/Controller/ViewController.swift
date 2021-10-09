//
//  ViewController.swift
//  WSUAssociateSwift
//
//  Created by Erik Buck on 9/16/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource {
   
   private var departmentsArray=[String]()
   private var employeesArray=[String]()
    
   override func viewDidLoad() {
      super.viewDidLoad()
      makeDepartmentArray()
      makeEmployeeArray()
      // Do any additional setup after loading the view.
    
    
   }
    
    func makeDepartmentArray(){
        
        //import set from model
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let departments = delegate.departments
        
        //iterate throught the set and append each entry to the array
        for department in departments{
            let depo = department.value(forKey:"name") as! String
            departmentsArray.append(depo)
            
        }
        
        //sort the array
        departmentsArray.sort()
    }
    
    func makeEmployeeArray(){
        
        //import set from model
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let employees = delegate.employees
        
        //iterate throught the set and append each entry to the array
        for employee in employees{
            let name1 = employee.value(forKey:"firstName") as! String
            let name2 = employee.value(forKey:"lastName") as! String
            var fullName = name2 + ", " + name1
            departmentsArray.append(fullName)
            
        }
        
        //sort the array
        departmentsArray.sort()
    }
   
    
    //count number of cells for each table
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let delegate = UIApplication.shared.delegate as! AppDelegate
    if(1 == tableView.tag){
        return delegate.employees.count
    }
    return delegate.departments.count
      //return (UIApplication.shared.delegate as! AppDelegate).departments.count
        //number of employees or departments
   }
   
    
    //fill each cell of the array
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
      let name = departmentsArray[index]
        
        cell.textLabel!.text = name
    }
      // Configure the cell’s contents.
      
      return cell
   }
}

