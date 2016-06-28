//
//  StrokeLoadingView.swift
//  LoadingControllerDemo
//
//  Created by Sapozhnik Ivan on 28.06.16.
//  Copyright © 2016 Sapozhnik Ivan. All rights reserved.
//

import UIKit

class StrokeLoadingView: LoadingView, Animatable {

	var activity = StrokeActivityView()
	var strokeColor = UIColor.darkGrayColor() {
		didSet(color) {
			activity.strokeColor = color
		}
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		defaultInitializer()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		defaultInitializer()
	}
	
	private func defaultInitializer() {
		backgroundColor = UIColor(white: 0.9, alpha: 1.0)
		let size = defaultActivitySize
		activity.frame = CGRectMake(0, 0, size.width, size.height)
		addSubview(activity)
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		activity.center = CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds))
	}
	
	func startAnimating() {
		
		let delay = 0.0 * Double(NSEC_PER_SEC)
		let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
		dispatch_after(time, dispatch_get_main_queue(), {
			self.activity.animating = true
		})
	}
	
	func stopAnimating() {
		activity.animating = false
	}
}
