//
//  ViewController.swift
//  Todoey
//
//  Created by Tim Nesheim on 4/12/18.
//  Copyright © 2018 Tim Nesheim. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Buy Groceries", "Vacuum", "Do Laundry"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK: - Tablview Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
        }
    
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

