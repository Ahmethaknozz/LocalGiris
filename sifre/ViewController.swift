//
//  ViewController.swift
//  sifre
//
//  Created by ahmet hakan öz on 17.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kadi: UITextField!
    @IBOutlet weak var sifre: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var mesajtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func giris(_ sender: Any) {
        
        let kadi1 = "abc"
        let sifre1 = "123"
        
        if (kadi1 == kadi.text && sifre1 == sifre.text){
            
            label.text = "giris basarili"
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let gidilecekvc = storyboard.instantiateViewController(withIdentifier: "sayfa2") as! ViewController1
            
            gidilecekvc.text = mesajtext.text
            self.present(gidilecekvc, animated: true, completion:nil )
            
            
        }
        else{
            label.text = "giris basarisiz"
        }
        
        
        
        
    }
    
}

