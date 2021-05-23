//
//  HomeVC.swift
//  EZWorkout
//
//  Created by Daniel Ramirez on 5/23/21.
//

import UIKit

class HomeVC: BaseViewController<BaseView> {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.pushToDayVC()
    }
}

extension HomeVC {
    private func pushToDayVC() {
        let dayVC = DayVC()
        
        let navVC = UINavigationController(rootViewController: dayVC)
        navVC.modalPresentationStyle = .overFullScreen
        navVC.modalTransitionStyle = .crossDissolve
        self.present(navVC, animated: true, completion: nil)
    }
}
