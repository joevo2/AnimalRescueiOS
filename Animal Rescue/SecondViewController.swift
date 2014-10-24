//
//  SecondViewController.swift
//  Animal Rescue
//
//  Created by Joel Yek on 10/8/14.
//  Copyright (c) 2014 Joel Yek. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, FBLoginViewDelegate, UITextFieldDelegate {
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    //Facebook UI outlet?
    @IBOutlet var fbLoginView : FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Facebook login stuff
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
    }
    
    //Facebook Delegate method
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
        println("This is where you perform a segue.")
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser){
        println("User Name: \(user.name)")
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton) {
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
        
    }
    
    //iOS Touch Function
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //Text Field UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

