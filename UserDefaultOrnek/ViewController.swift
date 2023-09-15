//
//  ViewController.swift
//  UserDefaultOrnek
//
//  Created by Dilan Öztürk on 26.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBAction func btnKaydetAction(_ sender: Any) {
        // casting converting
        let number = Int(numberTextField.text!) // numberTextField içine girilen değeri Int e çevir. ilgili text field içine girilen değeri ver.
        // text field gibi inputların içie girilen her değer string kabul edilir, sayı girilse bile. o yüzden int e çeviriyoruz
        
        UserDefaults.standard.set(number, forKey: "numberDegisken") // forkey e bir isim veriyoruz. numberDegisken text field ın içine girilen değer olacak. uygulama içerisine UserDefaults ile bir değişken sakla bunun adı numberDegisken olsun, değeri de kullanıcının girdiği değer olsun
        
    }
    
    @IBAction func btnSilAction(_ sender: Any) {
        
        numberTextField.text = ""
        UserDefaults.standard.set("", forKey: "numberDegisken")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilenNumber = UserDefaults.standard.integer(forKey: "numberDegisken") // sayfa yüklenirken adı numberDegisken olan degiskeni al ve text field ın içine yaz
        
        numberTextField.text = String(kaydedilenNumber) // bu değişkenı numberTextField ın içine yaz
    }


}

