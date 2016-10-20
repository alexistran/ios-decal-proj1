//
//  statsViewController.swift
//  AlexisTranToDoList
//
//  Created by Alexis Tran on 10/19/16.
//  Copyright © 2016 Alexis Tran. All rights reserved.
//

import UIKit

class statsViewController: UIViewController {
    var numDeleted = 0
    @IBOutlet weak var currNum: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        (segue.destination as! TaskTableViewController).numDeleted = numDeleted
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        (segue.destination as! TaskTableViewController).count = count
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
