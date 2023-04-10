//
//  Extensions.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/10/23.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
