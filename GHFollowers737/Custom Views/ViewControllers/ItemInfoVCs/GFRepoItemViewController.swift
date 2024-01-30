//
//  GFRepoItemViewController.swift
//  GHFollowers737
//
//  Created by Jemo on 25.01.24.
//

import Foundation

class GFRepoItemViewController: GFItemInfoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
    }
    
    private func configureVC() {
        itemInfoViewOne.setType(itemInfoType: .repos, withCount: user.publicRepos) 
        itemInfoViewTwo.setType(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
    }
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
