
//
//  LocationInputActivationView.swift
//  UberTutorial
//
//  Created by dj on 14/02/2020.
//  Copyright © 2020 DJ. All rights reserved.
//

import UIKit

protocol LocationInputActivationViewDelegate: class{
    func presentLocationInputView()
}

class LocationInputActivationView: UIView {
    //MARK: - Properties
    weak var delegate: LocationInputActivationViewDelegate?
    private let indicatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let placeHolderLabel: UILabel = {
        let label = UILabel()
        label.text = "Where to?"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .darkGray
        return label
    }()
    
    
    //MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addShadow()
        
        addSubview(indicatorView)
        indicatorView.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 16)
        indicatorView.setDimensions(height: 6, width: 6)
        
        addSubview(placeHolderLabel)
        placeHolderLabel.centerY(inView: self, leftAnchor: indicatorView.rightAnchor, paddingLeft: 20)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(presentLocationInputView))
        addGestureRecognizer(tap)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Selectors
    @objc func presentLocationInputView(){
        delegate?.presentLocationInputView()
    }
}
