//
//  IndicatorLoadingView.swift
//  LoadingControllerDemo
//
//  Created by Sapozhnik Ivan on 23.06.16.
//  Copyright © 2016 Sapozhnik Ivan. All rights reserved.
//

import UIKit

class IndicatorLoadingView: LoadingView {

	let activity = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		defaultInitializer()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		defaultInitializer()
	}
	
	private func defaultInitializer() {
		activity.startAnimating()
		activity.color = UIColor.darkGrayColor()
		self.addSubview(activity)		
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		activity.center = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds))
	}

}
