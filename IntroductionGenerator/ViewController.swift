//
//  ViewController.swift
//  Prework
//
//  Created by Tramy Dong on 1/19/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var studentIDTextField: UITextField!
   
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var majorTextField: UITextField!

    @IBOutlet weak var coursesStepper: UIStepper!
    
    @IBOutlet weak var clubsStepper: UIStepper!
    
    @IBOutlet weak var graduateSchoolSwitch: UISwitch!

    
    @IBOutlet weak var numberOfCoursesLabel: UILabel!
    
    @IBOutlet weak var numberOfClubsLabel: UILabel!
    


    @IBAction func coursesStepperDidChange(_ sender: UIStepper) {
        numberOfCoursesLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func clubsStepperDidChange(_ sender: UIStepper) {
        numberOfClubsLabel.text = "\(Int(sender.value))"
    }
    
   /* @IBAction func coursesStepperDidChange(_ sender: UIStepper) {
        numberOfCoursesLabel.text = "\(Int(sender.value))"
    }
   
    @IBAction func clubsStepperDidChange(_ sender: UIStepper) {
        numberOfClubsLabel.text = "\(Int(sender.value))"
    } */
    
    @IBAction func introduceDidTap(_ sender: UIButton){
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        var gradSchool = "I do not plan to go to graduate school"
        if(graduateSchoolSwitch.isOn){
            gradSchool = "I plan to go to graduate school"
        }
        
        let introduction = "Hi! My name is \(firstNameTextField.text!) \(lastNameTextField.text!). My email is \(emailTextField.text!) and my student ID is \(studentIDTextField.text!). I am a \(year!) studying \(majorTextField.text!). I am taking \(numberOfCoursesLabel.text!) course(s) this semester and participating in \(numberOfClubsLabel.text!) campus club(s). "+gradSchool
        
        let alertController = UIAlertController(title: "Your introduction: ", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "close", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

