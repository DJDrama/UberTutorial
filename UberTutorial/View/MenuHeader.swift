//
//  MenuHeader.swift
//  UberTutorial
//
//  Created by dj on 2020/03/11.
//  Copyright © 2020 DJ. All rights reserved.
//

import UIKit

class MenuHeader: UIView {
    // MARK: - Properties

    
    private let user: User
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .lightGray
        return iv
    }()
    private lazy var fullnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        label.text = user.fullName
        return label
    }()
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.text = user.email
        return label
    }()
    
    
    // MARK: - Lifecycle
    init(user: User, frame: CGRect){
        self.user = user
        super.init(frame: frame)
        backgroundColor = .backgroundColor
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 12, width: 64, height: 64)
        profileImageView.layer.cornerRadius = 64/2
        
        let stack = UIStackView(arrangedSubviews: [fullnameLabel, emailLabel])
        stack.distribution = .fillEqually
        stack.spacing = 4
        stack.axis = .vertical
        
        addSubview(stack)
        stack.centerY(inView: profileImageView, leftAnchor: profileImageView.rightAnchor, paddingLeft: 12)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Selectors

}
    

