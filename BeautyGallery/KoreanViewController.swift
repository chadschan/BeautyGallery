//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by ChadChan on 16/5/9.
//  Copyright © 2016年 ChadChan. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: ViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func facebookTapped(sender: AnyObject) {

        socialShare(SLServiceTypeFacebook)
    }

    @IBAction func sinaweiboTapped(sender: AnyObject) {
        
        socialShare(SLServiceTypeSinaWeibo)
    }
    
    @IBAction func twtterTapped(sender: AnyObject) {
        
        socialShare(SLServiceTypeTwitter)
        
    }
    
    //Define an own func
    func socialShare(type: String) -> Int {
        
        //type could be SLServiceTypeFacebook,SLServiceTypeTwtter,SLServiceTypeSinaWeibo
        let SLcontroller:SLComposeViewController = SLComposeViewController(forServiceType:type)
        SLcontroller.setInitialText("This is a test on my app, Here is a pic.")
        SLcontroller.addImage(beautyImage.image)
        self.presentViewController(SLcontroller, animated: true, completion: nil)
        
        return 0

    }
}
