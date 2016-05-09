//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by ChadChan on 16/5/7.
//  Copyright © 2016年 ChadChan. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource{
    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
    }

}

extension ViewController:UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row]
    }
}