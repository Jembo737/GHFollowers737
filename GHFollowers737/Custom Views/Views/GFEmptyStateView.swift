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
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    func configure() {
        addSubview(messageLabel)
        addSubview(logoView)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        logoView.image = UIImage(named: "empty-state-logo")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        ])
    }
}
