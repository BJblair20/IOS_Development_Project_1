//
//  AppDelegate.swift
//  WSUAssociateSwift
//
//  Created by Erik Buck on 9/16/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   
   var window: UIWindow?
   var employees = Set<NSObject>()
   var departments = Set<Department>()
   
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
      employees = [
         Employee("Doe", "John", "Receptionist"),
         Employee("Ant", "Adam"), 
         Employee("Bop", "Betty"), 
         Employee("Cabbage", "Claude"), 
         Employee("Doherty", "Debra"), 
         Employee("Evermore", "Eva"), 
         Employee("Furter", "Frank"), 
         Employee("Gunderson", "George"), 
         Employee("Hamilton", "Henry"), 
         Employee("Issacson", "Igor"), 
         Employee("Jewel", "Jacob"), 
         Employee("Kemp", "Karen"), 
         Employee("Lambert", "Adam"), 
         Employee("Mummer", "Betty"), 
         Employee("Nevis", "Claude"), 
         Employee("Oliver", "Debra"), 
         Employee("Patrick", "Eva"), 
         Employee("Quant", "Frank"), 
         Employee("Robberts", "George"), 
         Employee("Smith", "Henry"), 
         Employee("Tyson", "Igor"), 
         Employee("Unangst", "Jacob"), 
         Employee("Volt", "Karen"), 
         Employee("Ant", "Amy"), 
         Employee("Bop", "Bertrand"), 
         Employee("Cabbage", "Clara"), 
         Employee("Doherty", "Donald"), 
         Employee("Evermore", "Ester"),
         NSDictionary(dictionary: ["firstName" : "Zack", "lastName" : "Zeinith", "title" : "Dude!"]),
         NSDictionary(dictionary: ["firstName" : "Hank", "lastName" : "Aaron", "title" : "Hall of Fame Dude"])
      ]
      
      departments = [
         Department("Executive"),
         Department("Operations"),
         Department("Engineering"),
         Department("Sales"),
         Department("Admin"),
         Department("Quality Assurance"),
      ]
      
      return true
   }
   
   func applicationWillResignActive(_ application: UIApplication) {
      // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
      // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
   }
   
   func applicationDidEnterBackground(_ application: UIApplication) {
      // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
      // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
   }
   
   func applicationWillEnterForeground(_ application: UIApplication) {
      // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
   }
   
   func applicationDidBecomeActive(_ application: UIApplication) {
      // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
   }
   
   func applicationWillTerminate(_ application: UIApplication) {
      // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
   }
   
   
}

