//
//  ComposeViewController.swift
//  Twitter
//
//  Created by Alex Chen on 3/4/17.
//  Copyright © 2017 Alex Chen. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var characterCountLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screenNameLabel: UILabel!
    @IBOutlet weak var tweetTextField: UITextView!
    
    var startingText: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if startingText != nil {
            tweetTextField.text = "\(startingText!) "
        }
        tweetTextField.becomeFirstResponder()
        
        userImageView.setImageWith((User.currentUser?.userImageURL)!)
        nameLabel.text = User.currentUser?.name
        screenNameLabel.text = "@\(User.currentUser!.screenName)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCloseButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onTweetButton(_ sender: Any) {
        // TwitterClient.sharedInstance.tweet(tweetTextField.text)
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
