//
//  TweetViewController.swift
//  Twitter
//
//  Created by Vi Nguyen on 2/21/22.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tweetTextView.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
  
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated:true, completion: nil)
    }
    
    @IBOutlet weak var tweetTextView: UITextView!
    
    @IBAction func tweet(_ sender: Any) {
    
        if (!tweetTextView.text.isEmpty){
            TwitterAPICaller.client?.postTweet(tweetString: tweetTextView.text, sucess: {
                self.dismiss(animated: true, completion: nil)
                //print(self.tweetTextView.text ?? "none")
            }, failure: {(error)in
                print("Error posting tweet \(error)")
            })
            
        }else {
            self.dismiss(animated: true, completion: nil)
        }
         
    }
        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
