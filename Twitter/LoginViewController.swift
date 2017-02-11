//
//  LoginViewController.swift
//  Twitter
//
//  Created by Alex Chen on 2/11/17.
//  Copyright © 2017 Alex Chen. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let twitterClient = BDBOAuth1SessionManager(baseURL: URL(string: "https://api.twitter.com")!, consumerKey: "aAVGqAYRLeCgpyzsvKdcc41as", consumerSecret: "UZ7XyN5PDjw2JfATYEb9QxMcx3u1OZx3UOImAZ6SWPiXnSOPgR")
        
        twitterClient?.deauthorize()
        twitterClient?.fetchRequestToken(withPath: "oauth/request_token", method: "GET", callbackURL: URL(string: "twitterDemo://oauth"), scope: nil, success: { (requestToken: BDBOAuth1Credential?) in
            print("I got token!")
    
            let url = URL(string: "https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken?.token)")!
            UIApplication.shared.open(url, options: [:], completionHandler: { (Bool) in
                print("idk")
            })
        
            
        }, failure: { (error: Error?) in
            print("error: \(error?.localizedDescription)")
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
