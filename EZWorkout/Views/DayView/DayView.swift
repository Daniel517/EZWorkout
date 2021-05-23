//
//  DayView.swift
//  EZWorkout
//
//  Created by Daniel Ramirez on 5/23/21.
//

import UIKit

protocol DayViewDelegate {
    func didTapLeftArrow()
    func didTapRightArrow()
}

class DayView: BaseView {
    
    // MARK: Declaration of variables
    var delegate: DayViewDelegate?
    
    // MARK: Declaration of views
    private let dateNav: DateNavigator = {
        let dN = DateNavigator()
        dN.translatesAutoresizingMaskIntoConstraints = false
        return dN
    }()
    
    override func setViews() {
        self.backgroundColor = .white
        self.addSubview(dateNav)
        dateNav.delegate = self
    }
    
    override func layoutViews() {
        dateNav.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        dateNav.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        dateNav.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        dateNav.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

// MARK: Class functions
extension DayView {
    func setDate(_ date: String) {
        dateNav.setDateLabel(date)
    }
}

// MARK: Date Navigator delegate functions
extension DayView: DateNavigatorDelegate {
    func didTapLeftArrow() {
        delegate?.didTapLeftArrow()
    }
    
    func didTapRightArrow() {
        delegate?.didTapRightArrow()
    }
}
