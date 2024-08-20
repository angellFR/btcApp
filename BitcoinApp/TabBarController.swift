//
//  TabBarController.swift
//  BitcoinApp
//
//  Created by OSX on 20/08/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVc = FavoriteViewController()
        firstVc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let secondVc = HomeViewController()
        secondVc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        
        viewControllers = [secondVc,firstVc]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
