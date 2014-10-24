//
//  settings.swift
//  Animal Rescue
//
//  Created by Joel Yek on 10/10/14.
//  Copyright (c) 2014 Joel Yek. All rights reserved.
//

import UIKit

class SettingsView: UIViewController, FBLoginViewDelegate {
//    //Facebook UI outlet?
//    @IBOutlet var fbLoginView : FBLoginView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //Facebook login stuff
//        self.fbLoginView.delegate = self
//        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
//    }
//    
//    //Facebook Delegate method
//    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
//        println("User Logged In")
//        println("This is where you perform a segue.")
//    }
//    
//    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser){
//        println("User Name: \(user.name)")
//    }
//    
//    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
//        println("User Logged Out")
//    }
//    
//    func loginView(loginView : FBLoginView!, handleError:NSError) {
//        println("Error: \(handleError.localizedDescription)")
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}