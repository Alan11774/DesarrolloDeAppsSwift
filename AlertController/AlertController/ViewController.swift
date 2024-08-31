//
//  ViewController.swift
//  AlertController
//
//  Created by Alan Ulises on 31/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func dialogBoxButtonPressed(_ sender: UIButton) {
        let dialogBox = UIAlertController(title: "Dialog Box", message: "Whats your name?", preferredStyle: .alert)
        
        let actionHandler = {( action: UIAlertAction) -> Void in
            let name = dialogBox.textFields?.first?.text ?? ""
            print("Name:", name)
        }
        
        let dialogAction = UIAlertAction(title: "Ok", style: .default, handler: actionHandler)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        
        dialogBox.addAction(dialogAction)
        dialogBox.addAction(cancelAction)
        dialogBox.addTextField(configurationHandler: {text in text.placeholder = "Write your name"})
        
        self.present(dialogBox,animated: true)
        
    }
    
    @IBAction func alertButtonPressed(_ sender: UIButton) {
        let alertMessage = UIAlertController(title: "tittle", message: "alert message", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let destroyAction = UIAlertAction(title: "destroy", style: .destructive, handler: nil)
        
        alertMessage.addAction(alertAction)
        alertMessage.addAction(cancelAction)
        alertMessage.addAction(destroyAction)
        
        self.present(alertMessage, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

