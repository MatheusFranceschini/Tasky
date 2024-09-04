//
//  UIViewController+.swift
//  Tasky
//
//  Created by Matheus Franceschini on 03/09/24.
//

import UIKit

extension UIViewController {
    func addGradientBackground() {
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = view.bounds
        gradientBackground.colors = [UIColor.white.cgColor, UIColor.lilac.cgColor]
        view.layer.insertSublayer(gradientBackground, at: 0)
    }
}
