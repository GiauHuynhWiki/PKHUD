//
//  PKHUDCustomActivityIndicatorView.swift
//  PKHUD
//
//  Created by Philip Kluz on 6/12/15.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit

/// PKHUDCustomActivityIndicatorView provides the system UIActivityIndicatorView as an alternative.
public final class PKHUDCustomActivityIndicatorView: UIView, PKHUDAnimating {

    public init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        commonInit()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit () {
        self.addSubview(activityIndicatorView)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        activityIndicatorView.center = self.center
    }

    let activityIndicatorView: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView(style: .large)
        activity.color = UIColor.black
        return activity
    }()

    public func startAnimation() {
        activityIndicatorView.startAnimating()
    }
}
