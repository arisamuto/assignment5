//
//  ViewController.swift
//  assignment5
//
//  Created by Arisa Muto on 2019/06/02.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fruitlabel: UILabel!
    @IBOutlet var vegelabel: UILabel!
    @IBOutlet var fruitTextFeild: UITextField!
    @IBOutlet var vegeTextFeild: UITextField!
    @IBOutlet var savebutton: UIButton!
    
    
    var wordArray: [Dictionary<String, String>] = []
    let saveData = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if saveData.array(forKey: "veges") != nil {
            wordArray = saveData.array(forKey: "veges") as! [Dictionary<String, String>]
        }
   
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func saveWord() {
        let vocab = ["kudamono": fruitTextFeild.text!, "yasai": vegeTextFeild.text!]
        wordArray.append(vocab)
        saveData.set(wordArray, forKey: "veges")
        
    }
    
}

