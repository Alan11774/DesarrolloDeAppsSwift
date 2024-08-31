//
//  ViewControllerExtension.swift
//  AlertController
//
//  Created by Alan Ulises on 31/08/24.
//

import Foundation
import UIKit

///////////////////////
extension UIViewController {
//MARK:    Alert window
    func show(error: String) {
        let alert = UIAlertController(title: "Error", message:error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style:.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
//MARK:    Error window
    func show(warning: String) {
        let alert = UIAlertController(title: "Alerta",message: warning, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style:.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
//    MARK: Binary Question
    func ask(title: String?, question: String?,
             positiveButtonTitle: String = "Sí", negativeButtonTitle:
             String = "No", isDangerousAction: Bool = false, delegate: @escaping (_ agreed: Bool) -> Void) {
        
        let alert = UIAlertController(title: title, message:question, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title:positiveButtonTitle, style: isDangerousAction ? .destructive : .default) { (_) in
            delegate(true)
        })
        
        alert.addAction(UIAlertAction(title:negativeButtonTitle, style: .cancel) { (_) in
            delegate(false)
        })
        present(alert, animated: true, completion: nil)
    }
    
//    MARK: One line text answer question
    func ask(title: String?, question: String?, placeholder:String?, keyboardType:UIKeyboardType = .default, delegate:@escaping (_ answer: String?) -> Void) {
        let alert = UIAlertController(title: title, message:question, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = placeholder
            textField.keyboardType = keyboardType
        }
        alert.addAction(UIAlertAction(title: "Aceptar", style:.default) {(_) in
        let answer = alert.textFields?.first?.text
        delegate(answer)
        })
        alert.addAction(UIAlertAction(title: "Cancelar", style:.cancel) { (_) in
        delegate(nil)
        })
        present(alert, animated: true, completion: nil)
    }
}
