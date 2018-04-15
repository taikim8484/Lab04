//
//  ViewController.swift
//  Lab-04
//
//  Created by kimhuutai on 4/16/18.
//  Copyright © 2018 kimhuutai. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var studentArray:[Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        self.fetchData()
        self.tableView.reloadData()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let fullInfo = studentArray(indexPath.row)
        cell.textLabel!.text = fullInfo.name! + " Name"
        return cell
    }
    
    func fetchData() {
        let content = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            studentArray = try content.fetch(Student.fetchRequest())
        } catch {
            print(error)
        }
    }



}

