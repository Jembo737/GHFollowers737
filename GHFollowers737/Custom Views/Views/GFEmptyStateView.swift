//
//  GFEmptyStateView.swift
//  GHFollowers737
//
//  Created by Jemo on 10.01.24.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontsize: 28)
    let logoView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLogoMessageView()
        configureMessageLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    private func configureMessageLabel() {
        addSubview(messageLabel)
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureLogoMessageView() {
        addSubview(logoView)
        logoView.image = Images.emptyStateLogo
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        ])
    }
}
