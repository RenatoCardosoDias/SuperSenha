
//
//  PasswordGenerate.swift
//  SuperSenha
//
//  Created by Renato on 31/08/22.
//

import Foundation

class PasswordGenerate {
    
    var numberOfCharacters: Int
    var useLetters: Bool
    var userCapitalLetters: Bool
    var useNumbers: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letters  = "abcdefghijklmnopqrstuvwxyz"
    private let numbers = "0123456789"
    private let specialCharacters = "!@#$%ˆ&*()_=+~'|]}{[`:;?/<>.,"
    
   
    
    init( numberOfCharacters: Int, useLetters: Bool, useCapitalLetters: Bool, useNumbers: Bool, useSpecialCharacters: Bool ){
        
        var numChars = min(numberOfCharacters , 16)
        numChars = max(numChars, 1)
        
        self.useLetters = useLetters
        self.userCapitalLetters = useCapitalLetters
        self.useNumbers = useNumbers
        self.useSpecialCharacters = useSpecialCharacters
        self.numberOfCharacters = numChars
        
    } //end init
    
    func generate(total: Int) -> [String] {
        //limpando o array de senhas
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters{
            universe += letters
        }
        if useNumbers{
            universe += numbers
        }
        
        if useSpecialCharacters{
            universe += specialCharacters
        }
        
        if userCapitalLetters{
            universe += letters.uppercased()
        }
        
        //ao final temos uma string universe com todos os caracteres para gerar uma senha
        
        let universeArray = Array(universe)
        //cria um array universeArray e adicionado cada dos caracteres no array
        while passwords.count < total {
            //em quanto a quantidade de caracteres(password.count) for menor do que o que o usuário infomou, faça!
            var password = ""
            //a cada laço que ocorrer será preenchido na variavel password
            for _ in 1...numberOfCharacters{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                //vai pegar o indice aleatório de um caractere converter em Inteiro até chegar na quantidade de caractere informado para o usuario
                password += String(universeArray[index])
            }
            //vai adicionando o caracter na variavel password
            password.append(password)
        }
        //retona o array de senhas
        return passwords
        
    } //end func generate
    
}//end class PasswordGenerate
