//
//  UserViewController.swift
//  Lab-04
//
//  Created by kimhuutai on 4/16/18.
//  Copyright © 2018 kimhuutai. All rights reserved.
//

import UIKit
import CoreData

class UserViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var birthday: UITextField!
    @IBOutlet weak var classname: UITextField!
    @IBOutlet weak var otherinfo: UITextField!
    
    var content = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addBtn(_ sender: Any) {
        if name?.text != "" && gender?.text != "" && birthday?.text != "" && classname?.text != "" && otherinfo?.text != "" {
        
            let newStudent = NSEntityDescription.insertNewObject(forEntityName: "Student", into: content)
            newStudent.setValue(self.name!.text, forKey: "name")
            newStudent.setValue(self.gender!.text, forKey: "gender")
            newStudent.setValue(self.birthday!.text, forKey: "birthday")
            newStudent.setValue(self.classname!.text, forKey: "classname")
            newStudent.setValue(self.otherinfo!.text, forKey: "otherinfo")
            
            do {
                try content.save()
            } catch  {
                print(error)
            }
            
        }else{
            print("Fill all field please!!")
        }
    }
    
    @IBOutlet weak var backBtn: UIBarButtonItem!
    
    
}
