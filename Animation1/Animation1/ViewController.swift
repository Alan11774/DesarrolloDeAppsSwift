//
//  ViewController.swift
//  Animation1
//
//  Created by Alan Ulises on 31/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    let viewGToY = UIView()
    let viewMToB = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        startMotion()
    }

    func setupUI() {
        
        viewGToY.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        viewGToY.backgroundColor = UIColor.green
        view.addSubview(viewGToY)        
        
        viewMToB.frame = CGRect(x: 100, y: 100, width: 80, height: 80)
        viewMToB.backgroundColor = UIColor.magenta
        view.addSubview(viewMToB)
    }
    
    func startMotion() {
        
        //ViewGToB
        UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
            self.viewGToY.backgroundColor = UIColor.yellow
            self.viewGToY.frame = CGRect(x: 150, y: 150, width: 150, height: 150)
            }
        )
        
        
        //viewMToB
        UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
            self.viewMToB.backgroundColor = UIColor.blue
            self.viewMToB.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        }
        )
        
    }

}

