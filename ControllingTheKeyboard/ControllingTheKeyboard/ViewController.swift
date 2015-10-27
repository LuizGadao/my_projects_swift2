//
//  ViewController.swift
//  ControllingTheKeyboard
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 27/10/15.
//  Copyright © 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tf: UITextField!
    
    @IBAction func clickBt(sender: AnyObject) {
        label.text = tf.text
        textFieldShouldReturn(tf)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tf.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        tf.resignFirstResponder()
        return true
    }
}

