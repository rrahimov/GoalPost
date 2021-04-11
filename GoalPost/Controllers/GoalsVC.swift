//
//  ViewController.swift
//  GoalPost
//
//  Created by Ruhullah Rahimov on 11.04.21.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Button pressed")
    }

}

