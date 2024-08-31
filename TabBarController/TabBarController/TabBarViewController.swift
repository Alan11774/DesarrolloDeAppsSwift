//
//  TabBarViewController.swift
//  TabBarController
//
//  Created by Alan Ulises on 24/08/24.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate =  self
        // Do any additional setup after loading the view.
    }
    
    // Code to return to home in tab navigations
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if viewController is UINavigationController{
            if let navController = viewController as? UINavigationController{
                navController.popToRootViewController(animated: false)
            }
        }
    }

}
