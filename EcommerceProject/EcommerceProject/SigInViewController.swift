//
//  SigInViewController.swift
//  EcommerceProject
//
//  Created by Demo 01 on 11/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class SigInViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    @IBOutlet weak var sigInEmail: UITextField!
    @IBOutlet weak var sigInMobileTextField: UITextField!
    @IBOutlet weak var sigInPwdTextField: UITextField!
    
    var db = DBManager()
    
    var arr = ["91","92","31","32","33","34","55"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.dataSource = self as! UIPickerViewDataSource
        myPickerView.delegate = self
        db.insert = (name: nameTextField.text, email: sigInEmail.text, phone: sigInMobileTextField.text, password: sigInPwdTextField.text)
    }
  
    @IBAction func signInBtn(_ sender: Any) {
    }
}


extension SigInViewController:UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
}

extension SigInViewController:UIPickerViewDelegate
{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sigInMobileTextField.text = arr[row]
    }
}
