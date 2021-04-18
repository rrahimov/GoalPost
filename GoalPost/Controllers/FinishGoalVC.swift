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
        if pointsTextField.text != nil {
            self.save { (complete) in
                if complete {
                dismiss(animated: true, completion: nil)
                }
        }
    }
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        //Instance of Goal entity from core data (passing managedContext so it know where it shall store data):
        let goal = Goal(context: managedContext)
        
        //Then we pass data from VC/ setup a model:
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        //Tell managed object context to pass this into persistent storage:
        do {
            try managedContext.save()
            completion(true)
            print("Successfully saved data.")
        } catch {
            debugPrint("Coult not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    
}
