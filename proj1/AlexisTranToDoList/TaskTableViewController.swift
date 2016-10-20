//
//  TaskTableViewController.swift
//  AlexisTranToDoList
//
//  Created by Alexis Tran on 10/19/16.
//  Copyright © 2016 Alexis Tran. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    // MARK: Properties
    
    var tasks = [Task]()
    var numDeleted = 0


    override func viewDidLoad() {
        super.viewDidLoad()
     //   let now = NSDate()
//        var index = 0
//        
//        for task in tasks {
//            if task.checked == true {
//                // && hasbeenoneday
//               // tasks.remove(at: index)
//                
//            } else {
//                index += 1
//            }
//        }
        //super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        //loadSampleTasks()
        
        
    }
//    func differenceInDaysWithDate(date: NSDate) -> Int {
//        
//    }
//    func loadSampleTasks() {
//        let task1 = Task(task: "Wash Dishes")!
//        
//        let task2 = Task(task: "Do Laundry")!
//        
//        let task3 = Task(task: "Finish hw")!
//        tasks += [task1, task2, task3]
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TaskTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        // Configure the cell...
        cell.taskLabel.text = task.task
        
        return cell
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        (segue.destination as! TaskViewController).tasks = tasks
        (segue.destination as! statsViewController).currNum.text = String(numDeleted)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.accessoryType == .checkmark {
            cell?.accessoryType = .none
            tasks[indexPath.row].checked = false
            
        
        } else {
            cell?.accessoryType = .checkmark
            tasks[indexPath.row].checked = true
            tasks[indexPath.row].date = NSDate()
//            tasks.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//            numDeleted+=1
           
        }
    }
    @IBAction func unwindToTaskList(sender: UIStoryboardSegue) {
//        let sourceViewController = sender.source as? TaskViewController
//        print(sourceViewController?.task)
        if let sourceViewController = sender.source as? TaskViewController {
            sourceViewController.textFieldDidEndEditing(sourceViewController.taskTextField)
            let task = sourceViewController.task
            let newIndexPath = IndexPath(row: tasks.count, section: 0)
            tasks.append(task!)
    
            tableView.insertRows(at: [newIndexPath], with: .bottom)
        }
    }

}
