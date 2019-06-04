//
//  ViewController.swift
//  assignment5
//
//  Created by Arisa Muto on 2019/06/02.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fruitTextFeild: UITextField!
    @IBOutlet var vegeTextFeild: UITextField!
    @IBOutlet var savebutton: UIButton!
    
    var dictionary: [String:String] = [:]
    var tosave: [String:String] = [:]
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //保存ボタン
    @IBAction func saveWord(_sender:Any) {
        tosave = ["fruits": fruitTextFeild.text!, "veges": vegeTextFeild.text!]
        saveData.set(tosave, forKey: "WORD")
        saveData.set(fruitTextFeild.text, forKey: "fruits")
        saveData.set(vegeTextFeild.text, forKey: "veges")

    }
    
    
}
