//
//  GFFollowerItemViewController.swift
//  GHFollowers737
//
//  Created by Jemo on 26.01.24.
//

import Foundation

class GFFollowerItemViewController: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
    }
    
    private func configureVC() {
        itemInfoViewOne.setType(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.setType(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
