//
//  IngredientesViewController.swift
//  Appizza
//
//  Created by Taylor on 10/21/15.
//  Copyright © 2015 Taylor. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController, UITextFieldDelegate {

   
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var jamon: UITextField!
    
    @IBOutlet weak var pepperoni: UITextField!
    
    @IBOutlet weak var pavo: UITextField!
    
    @IBOutlet weak var salchicha: UITextField!
    
    @IBOutlet weak var aceituna: UITextField!
    
    @IBOutlet weak var cebolla: UITextField!
    
    @IBOutlet weak var pimiento: UITextField!
    
    @IBOutlet weak var pina: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jamon.delegate=self
        pepperoni.delegate=self
        pavo.delegate=self
        salchicha.delegate=self
        aceituna.delegate=self
        cebolla.delegate=self
        pimiento.delegate=self
        pina.delegate=self
        
        // Do any additional setup after loading the view.
    }
    @IBAction func backgroundTap(sender:UIControl)
    {
     jamon.resignFirstResponder()
        pepperoni.resignFirstResponder()
        pavo.resignFirstResponder()
        salchicha.resignFirstResponder()
        aceituna.resignFirstResponder()
        cebolla.resignFirstResponder()
        pimiento.resignFirstResponder()
        pina.resignFirstResponder()
    }

    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto:CGPoint
        punto=CGPointMake(0, textField.frame.origin.y-60)
        self.scroll.setContentOffset(punto, animated: true)
    }
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    @IBAction func textFieldDoneEditing(sender:UITextField)
    {
       sender.resignFirstResponder()
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
