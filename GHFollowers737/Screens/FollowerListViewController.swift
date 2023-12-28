//
//  FollowerViewController.swift
//  GHFollowers737
//
//  Created by Dzhemal on 25.12.2023.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, errorMesage in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad things happend", message: errorMesage!.rawValue, buttonTitle: "Ok")
                return
            }
            print("Followers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //        navigationController?.navigationBar.isHidden = false  have a bug where navigation controller dissapears
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
