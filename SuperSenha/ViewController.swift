//
//  ViewController.swift
//  SuperSenha
//
//  Created by Renato on 31/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumbersOfCaracters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var seCapitalLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swSpecialCaracters: UISwitch!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //PASSANDO INFORMAÇÕES DE UMA VIEWCONTROLLER PARA OUTRA
    
    
    //antes da tela ser apresentada, carregar as informações
    //esse metodo é executado momentos antes da segue apresentar a nova tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //nesse momento consigo recuperar a tela e alimentar ela
        
        //CRIAR UM OBJETO QUE SEJA REFERENCIA A VIEW CONTROLER QUE IRA MOSTRAR
        let passwordViewController = segue.destination as! PasswordViewController
        //tendo acesso a todas a variaveis criada no arquivo PasswordViewController.swift
        
        
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordViewController.numberOfPassword = numberOfPasswords
        }
        if let numberOfCharacteres = Int(tfNumbersOfCaracters.text!){
            passwordViewController.numberOfCaracteres = numberOfCharacteres
        }
        passwordViewController.useLetters = swLetters.isOn
        passwordViewController.useCapitalLetters = seCapitalLetters.isOn
        passwordViewController.useNumbers = swNumbers.isOn
        passwordViewController.userSpecialCaracteres = swSpecialCaracters.isOn
        //fazendo com que o finalize o modo edição,qualquer TextField que esteja seleciondao ele vai ficar desselecioando,vai perder o foco automaticamente o teclado vai desaparecer
        view.endEditing(true)
        
    }


}

