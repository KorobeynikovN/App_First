//
//  ViewController.swift
//  test1
//
//  Created by Николай Коробейников on 30.11.2020.
//

import UIKit

class ViewController: UIViewController {
    private let login = "admin"
    private let pass = "123"
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        print("exit button")
    }
        
    @IBAction func myActionnn(_ sender: Any) {
        print("пользователь нажал синюю кнопку")
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
          
      if identifier == "Login" {
          if checkInput() {
              return true
          }
          else {
            let alert = UIAlertController(
                title: "Ошибка входа",
                message: "Неправильно введен логин или пароль",
                preferredStyle:  .alert)
            let action = UIAlertAction(title: "Хорошо",
                                    style: .default)
                {(action) in
                        self.loginField.text=""
                        self.passField.text=""
                }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            return false
          }
      }
          
    print("another segue")
    return true
    }
      
    private func checkInput() -> Bool {
        return (loginField.text==login)&&(passField.text==pass)
    }
}

