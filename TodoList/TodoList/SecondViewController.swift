//
//  SecondViewController.swift
//  TodoList
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 27/10/15.
//  Copyright © 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var tfTask: UITextField!
    
    @IBAction func btAddTask(sender: AnyObject) {
        todoList.append(tfTask.text!)
        saveData(TODO_ARRAY, obj: todoList)
        tfTask.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tfTask.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField:UITextField)->Bool{
        tfTask.resignFirstResponder()
        return true
    }
    
    func saveData(key:String, obj:AnyObject){
        NSUserDefaults.standardUserDefaults().setObject(obj, forKey: key)
    }
}

