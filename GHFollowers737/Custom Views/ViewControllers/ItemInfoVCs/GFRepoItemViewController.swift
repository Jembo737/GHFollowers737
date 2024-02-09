//
//  GFRepoItemViewController.swift
//  GHFollowers737
//
//  Created by Jemo on 25.01.24.
//

import Foundation

protocol GFRepoItemViewControllerDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class GFRepoItemViewController: GFItemInfoViewController {
    
    weak var delegate: GFRepoItemViewControllerDelegate!
    
    init(user: User, delegate: GFRepoItemViewControllerDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
