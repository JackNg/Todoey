//
//  TodoListViewController.swift
//  Todoey
//
//  Created by Ng Thiam Soon on 25/6/18.
//  Copyright © 2018 Ng Thiam Soon. All rights reserved.
//

import UIKit


class TodoListViewController: UITableViewController {

    
    let itemArray = ["Buy bread", "send email", "deposit cheque"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK - UITableView Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        let selectedIndexPath = itemArray[indexPath.row]
        cell.textLabel?.text = selectedIndexPath
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        return cell
    }

    
     //MARK - UITableView Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //print("You're taping on \(itemArray[indexPath.row])")
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }        
    }
}

