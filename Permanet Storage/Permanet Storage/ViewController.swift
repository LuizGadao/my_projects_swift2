//
//  ViewController.swift
//  Permanet Storage
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 27/10/15.
//  Copyright © 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let name = getData("name") as! String
        if name.isEmpty{
            let names = ["Luiz", "Marília", "João", "Justina"]
            saveData("names", obj: names);
            saveData("name", obj: "Luiz Carlos")
        }
        
        //get data
        let userName = getData("name") as! String
        print(userName)
        
        let userNames = getData("names") as! NSArray
        for i in userNames{
            print(i)
        }
    }
    
    func saveData(key:String, obj:AnyObject){
        NSUserDefaults.standardUserDefaults().setObject(obj, forKey: key)
    }
    
    func getData(key:String)->AnyObject{
        return NSUserDefaults.standardUserDefaults().objectForKey(key)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

