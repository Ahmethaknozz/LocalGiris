//
//  ViewController1.swift
//  sifre
//
//  Created by ahmet hakan öz on 17.02.2023.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var alinanmesaj: UILabel!
    var text:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if text != nil {
            alinanmesaj.text = text
        }
        
        
    }
    

    @IBAction func cikisyap(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var geri = storyboard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
        
        self.present(geri, animated: true)
        
    }
    
}
