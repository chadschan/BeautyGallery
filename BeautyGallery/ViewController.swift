//
//  ViewController.swift
//  BeautyGallery
//
//  Created by ChadChan on 16/5/6.
//  Copyright © 2016年 ChadChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["fanbingbing","libingbing","wangfei","yangmi","zhouxun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        beautyPicker?.dataSource = self
        beautyPicker?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GotoGallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            var imageName:String?
            switch index {
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxun"

            default:
                imageName = nil
            }
            
            let vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
        }
    }
    
    //Unwind segue
    @IBAction func close(segue: UIStoryboardSegue){
        
    }


}

