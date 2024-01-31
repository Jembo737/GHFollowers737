//
//  FavoriteListViewController.swift
//  GHFollowers737
//
//  Created by Dzhemal on 22.12.2023.
//

import UIKit

class FavoriteListViewController: UIViewController {
    
    var favorites: [Follower] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFavorites()
        view.backgroundColor = .systemBackground
        
    }
    func getFavorites() {
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorite):
                self.favorites = favorite
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Error", message: "Some error with favorites", buttonTitle: "Sad")
            }
        }
    }
}
