//
//  ItemsTableViewController.swift
//  classfinal
//
//  Created by George Ceja on 5/11/22.
//

import UIKit

class ItemsTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var items = ["a", "b", "c", "d", "e"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ItemsTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("tapped")
    }
}

extension ItemsTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ itemsTable: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = itemsTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "george"
        return cell
    }
}


//
//
//@IBOutlet weak var tableView: UITableView!
//
//var items = ["a", "b", "c", "d", "e"]
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view.
//    tableView.dataSource = self
//}
//}
//
//extension ItemsTableViewController {
//func tableView(_ itemsTable: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = itemsTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//    cell.textLabel?.text = items[indexPath.row]
//    return cell
//}
//
//func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return items.count
//}
