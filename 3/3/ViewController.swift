//
//  ViewController.swift
//  3
//
//  Created by 劉奕伶 on 2018/7/30.
//  Copyright © 2018年 Appwork School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    var currentPage = SegmentCase.logIn
    
   
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            switchPage(to: .logIn)
        } else {
            switchPage(to: .signUp)
        }
    }
    
    func switchPage(to page: SegmentCase) {
        if page == .logIn {
            currentPage = .logIn
            checkLabel.textColor = .gray
            checkTextField.backgroundColor = .darkGray
            checkTextField.isUserInteractionEnabled = false
            clearText()
        } else { 
            currentPage = .signUp
            checkLabel.textColor = .black
            checkTextField.backgroundColor = .white
            checkTextField.isUserInteractionEnabled = true
            clearText()
        }
    }
    
    func clearText() {
        accountTextField.text = nil
        passwordTextField.text = nil
        checkTextField.text = nil
        
    }
    
    
    
    func logIn() throws{
        guard let logInAccount = accountTextField.text, !logInAccount.isEmpty && logInAccount != " " else {
            throw Errors.emptyAccount
        }
        guard let logInPassword = passwordTextField.text, !logInPassword.isEmpty else {
            throw Errors.emptyPassword
        }
        if logInAccount != "luke@gmail.com" || logInPassword != "1234" {
            throw Errors.failedLogIn
        } else {
            showAlertWith(title: "Hello", message: "Log in succeed")
            clearText()
        }
    }
    
    func signUp() throws {
        guard let signUpAccount = accountTextField.text, !signUpAccount.isEmpty && signUpAccount != " " else {
            throw Errors.emptyAccount
        }
        guard let signUpPassword = passwordTextField.text, !signUpPassword.isEmpty else {
            throw Errors.emptyPassword
        }
        guard let signUpCheck = checkTextField.text, !signUpCheck.isEmpty else {
            throw Errors.emptyCheck
        }
        if signUpCheck != signUpPassword {
            throw Errors.failedSignUp
        } else {
            showAlertWith(title: "Hello", message: "Sign up succeed")
            clearText()
        }
        
    }
    
    func showAlertWith(title: String, message: String, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style) 
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func button(_ sender: Any) {
        do {
            switch currentPage {
            case .logIn: try logIn()
            case .signUp: try signUp()
            }
        } catch Errors.emptyAccount {
            showAlertWith(title: "Error", message: "Account should not be empty.")
        } catch Errors.emptyPassword {
            showAlertWith(title: "Error", message: "Password should not be empty.")
        } catch Errors.emptyCheck {
            showAlertWith(title: "Error", message: "Check Password should not be empty.")
        } catch Errors.failedLogIn {
            showAlertWith(title: "Error", message: "Log in fail")
        } catch Errors.failedSignUp {
            showAlertWith(title: "Error", message: "Sign up fail")
        } catch {
            print("other errors")
        }
    }
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

