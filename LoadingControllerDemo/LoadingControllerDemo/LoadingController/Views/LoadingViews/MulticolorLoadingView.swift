//
//  MulticolorLoadingView.swift
//  LoadingControllerDemo
//
//  Created by Sapozhnik Ivan on 28.06.16.
//  Copyright © 2016 Sapozhnik Ivan. All rights reserved.
//

import UIKit

class MulticolorLoadingView: LoadingView, Animatable {

	var activity = MulticolorActivityView()

	override init(frame: CGRect) {
		super.init(frame: frame)
		defaultInitializer()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		defaultInitializer()
	}
	
	private func defaultInitializer() {
		let size = defaultActivitySize
		activity.frame = CGRectMake(0, 0, size.width, size.height)
		activity.colorArray = rainbowColors()
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
			self.activity.startAnimating()
		})
		
	}
	
	func stopAnimating() {
		activity.stopAnimating()
	}
	
	private func rainbowColors() -> [UIColor] {
		var colors = [UIColor]()
		
		let inc = 0.05
		for var hue = 0.0; hue < 1.0; hue += inc {
			let color = UIColor(hue: CGFloat(hue), saturation: 1.0, brightness: 1.0, alpha: 1.0)
			colors.append(color)
		}
		return colors

	}
	
}
