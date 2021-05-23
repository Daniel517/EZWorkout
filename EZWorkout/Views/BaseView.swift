//
//  BaseView.swift
//  EZWorkout
//
//  Created by Daniel Ramirez on 5/23/21.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Override functions
    internal func setViews() {
        
    }
    
    internal func layoutViews() {
        
    }
}
