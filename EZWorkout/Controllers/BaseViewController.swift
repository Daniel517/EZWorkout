//
//  BaseViewController.swift
//  EZWorkout
//
//  Created by Daniel Ramirez on 5/23/21.
//

import UIKit

class BaseViewController<T: BaseView>: UIViewController {
    override func viewDidLoad() {
        view = T()
    }
    
    var containerView: T {
        return view as! T
    }
}
