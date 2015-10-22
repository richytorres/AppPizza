//
//  quesoViewController.swift
//  Appizza
//
//  Created by Taylor on 10/21/15.
//  Copyright © 2015 Taylor. All rights reserved.
//

import UIKit

class quesoViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    let pickerData=["mozarela", "cheddar", "parmesano", "sin queso"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.dataSource=self
        myPicker.delegate=self
        
        // Do any additional setup after loading the view.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text=pickerData[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
