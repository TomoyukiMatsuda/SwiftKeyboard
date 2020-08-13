//
//  ViewController.swift
//  SwiftKeyboard
//
//  Created by 松田智之 on 2020/08/14.
//  Copyright © 2020 tmatsuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passwordTextField.text
        
    }
    
    //タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //画面他部分をタッチで閉じる
        view.endEditing(true)
    }
    
    //キーボードのリターンキーを押したときにキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //キーボードが閉じる
        textField.resignFirstResponder()
        
        return true
    }
    
    
}

