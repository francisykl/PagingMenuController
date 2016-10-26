//
//  GradientView.swift
//  PagingMenuController
//
//  Created by lee yee chuan on 10/22/16.
//  Copyright © 2016 kitasuke. All rights reserved.
//

import UIKit

internal class GradientUnderlineView: UIView {
    @IBInspectable var startColor: UIColor = UIColor.white
    @IBInspectable var endColor:   UIColor = UIColor.black
    override class var layerClass: AnyClass { return CAGradientLayer.self }
    override func layoutSubviews() {
        super.layoutSubviews()
        guard let layer = layer as? CAGradientLayer else { return }
        layer.locations = [0,1]
        layer.colors    = [startColor.cgColor, endColor.cgColor]
    }

}
