//
//  DateNavigator.swift
//  EZWorkout
//
//  Created by Daniel Ramirez on 5/23/21.
//

import UIKit

protocol DateNavigatorDelegate {
    func didTapLeftArrow()
    func didTapRightArrow()
}

class DateNavigator: BaseView {
    
    // MARK: Declaration of variables
    var delegate: DateNavigatorDelegate?
    
    // MARK: Declaration of views
    private let containerSV: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.axis = .horizontal
        sv.alignment = .center
        return sv
    }()
    
    private let leftArrowIV: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentMode = .scaleAspectFit
        btn.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        btn.tintColor = UIColor(named: "DNArrowsColor")
        btn.addTarget(self, action: #selector(didTapLeftArrow), for: .touchUpInside)
        return btn
    }()
    
    private let dateLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        lbl.textColor = UIColor(named: "DNDateTextColor")
        lbl.font = UIFont.boldSystemFont(ofSize: 18.0)
        lbl.adjustsFontSizeToFitWidth = true
        lbl.minimumScaleFactor = 0.6
        return lbl
    }()
    
    private let rightArrowIV: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentMode = .scaleAspectFit
        btn.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        btn.tintColor = UIColor(named: "DNArrowsColor")
        btn.addTarget(self, action: #selector(didTapRightArrow), for: .touchUpInside)
        return btn
    }()
    
    override func setViews() {
        self.backgroundColor = UIColor(named: "DNBGColor")
        self.addSubview(containerSV)
        containerSV.addArrangedSubview(leftArrowIV)
        containerSV.addArrangedSubview(dateLabel)
        containerSV.addArrangedSubview(rightArrowIV)
    }
    
    override func layoutViews() {
        containerSV.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        containerSV.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        containerSV.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        containerSV.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        leftArrowIV.widthAnchor.constraint(equalTo: containerSV.widthAnchor, multiplier: 0.1).isActive = true
        dateLabel.widthAnchor.constraint(equalTo: containerSV.widthAnchor, multiplier: 0.8).isActive = true
        rightArrowIV.widthAnchor.constraint(equalTo: containerSV.widthAnchor, multiplier: 0.1).isActive = true
    }
}

// MARK: Class functions
extension DateNavigator {
    func setDateLabel(_ date: String) {
        self.dateLabel.text = date
    }
}

// MARK: Class action selectors
extension DateNavigator {
    @objc private func didTapLeftArrow() {
        print("LEFT")
    }
    
    @objc private func didTapRightArrow() {
        print("RIGHT")
    }
}
