//
//  ViewController.swift
//  Autolayout_Code2
//
//  Created by Alan Ulises on 23/08/24.
//

import UIKit

class ViewController: UIViewController {
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    func setupUI(){
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        
        label1.text = "titulo app"
        NSLayoutConstraint.activate([
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: <#T##CGFloat#>(integerLiteral:30))
        ])
    
    }
    

}

