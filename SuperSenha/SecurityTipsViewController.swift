//
//  SecurityTipsViewController.swift
//  SuperSenha
//
//  Created by Renato on 31/08/22.
//

import UIKit

class SecurityTipsViewController: UIViewController {

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
    @IBAction func close(_ sender: UIButton) {
        //fechando a janela Modal
        dismiss(animated: true, completion: nil)
        print("Fechando a janela Modal")
    }
    
}
