//
//  UserInfoVC.swift
//  GHFollowers737
//
//  Created by Jemo on 16.01.24.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        let shareButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareButtonTapped))

        navigationItem.leftBarButtonItem = doneButton
        navigationItem.rightBarButtonItem = shareButton
        
        print(username ?? "user not found")
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    @objc func shareButtonTapped() {
           let activityViewController = UIActivityViewController(activityItems: ["Your share content"], applicationActivities: nil)
           present(activityViewController, animated: true)
       }
}
