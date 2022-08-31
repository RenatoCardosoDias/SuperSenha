//
//  PasswordViewController.swift
//  SuperSenha
//
//  Created by Renato on 31/08/22.
//

import UIKit

class PasswordViewController: UIViewController {

    @IBOutlet weak var tvPassword: UITextView!
    
    //Criando caracteres
    var numberOfCaracteres: Int = 10
    var numberOfPassword: Int = 1
    var useLetters: Bool!
    var useCapitalLetters: Bool!
    var useNumbers: Bool!
    var userSpecialCaracteres: Bool!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func generate(_ sender: UIButton) {
        
        
    }
    

}
