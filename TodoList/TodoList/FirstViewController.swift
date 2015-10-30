//
//  FirstViewController.swift
//  TodoList
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 27/10/15.
//  Copyright © 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

var todoList = [String]()
let TODO_ARRAY = "todo-array"

class FirstViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //get data
        todoList = getData(TODO_ARRAY) as! [String]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return todoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = todoList[indexPath.row]
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.Delete{
            todoList.removeAtIndex(indexPath.row)
            saveData(TODO_ARRAY, obj: todoList)
            tableView.reloadData()
        }
    }
    
    //TODO REFACTOR THIS METHODS
    func isDataForKey(Key:String)->Bool{
        return NSUserDefaults.standardUserDefaults().objectIsForcedForKey(Key)
    }
    
    func saveData(key:String, obj:AnyObject){
        NSUserDefaults.standardUserDefaults().setObject(obj, forKey: key)
    }
    
    func getData(key:String)->AnyObject{
        return NSUserDefaults.standardUserDefaults().objectForKey(key)!;
    }


}

