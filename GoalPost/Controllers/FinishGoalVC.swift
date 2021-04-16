//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Ruhullah Rahimov on 16.04.21.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
        //pointsTextField.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
     }
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        
    }
    
}
