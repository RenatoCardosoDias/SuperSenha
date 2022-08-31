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
    //antes da tela ser apresentada, carregar as informações
    //esse metodo é executado momentos antes da segue apresentar a nova tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }


}

