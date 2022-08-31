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
    
    
    var passwordGenerator: PasswordGenerate
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Total de senhas: \(numberOfPassword)"
        passwordGenerator = PasswordGenerate(numberOfCharacters: numberOfCaracteres, useLetters: useLetters, useCapitalLetters: useCapitalLetters, useNumbers: useNumbers, useSpecialCharacters: userSpecialCaracteres)
        generatePasswords()
        
    }
    
    func generatePasswords() {
        //limpando os dados da UITextView antes de chamar o metodo novamente
        tvPassword.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPassword)
        for password in passwords {
            tvPassword.text.append(password + "\n\n")
        }
    }
    

    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
        
    }
    

}
