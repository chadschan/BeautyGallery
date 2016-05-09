//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by ChadChan on 16/5/7.
//  Copyright © 2016年 ChadChan. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    
    var imageName:String?
    
    @IBOutlet weak var beautyImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let imagesName = imageName {
            self.beautyImage.image = UIImage(named: imagesName)
            navigationItem.title = imagesName
            
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareTapped(sender: AnyObject) {
        let SLcontroller:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
        SLcontroller.setInitialText("This is a test on my app, Here is a pic of \(imageName!)")
        SLcontroller.addImage(beautyImage.image)
        self.presentViewController(SLcontroller, animated: true, completion: nil)
        
    }
}
