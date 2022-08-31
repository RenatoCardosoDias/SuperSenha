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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
