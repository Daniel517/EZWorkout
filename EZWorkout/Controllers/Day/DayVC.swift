//
//  DayVC.swift
//  EZWorkout
//
//  Created by Daniel Ramirez on 5/23/21.
//

import UIKit

class DayVC: BaseViewController<DayView> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.containerView.delegate = self
        
        // Set up plus icon in navbar
        let plusIcon = UIBarButtonItem(image: UIImage(systemName: "plus.square"), style: .done, target: self, action: #selector(didTapPlusIcon))
        plusIcon.tintColor = UIColor(named: "PlusIconTintColor")
        self.navigationItem.rightBarButtonItem = plusIcon
        
        // Set date label used for testing, will be replaced by data model
        self.containerView.setDate("May 23, 2021") // For testing
    }
    
}

extension DayVC {
    @objc func didTapPlusIcon() {
        print("TAPPED")
    }
}

extension DayVC: DayViewDelegate {
    func didTapLeftArrow() {
        print("LEFT")
    }
    
    func didTapRightArrow() {
        print("RIGHT"
        )
    }
}
