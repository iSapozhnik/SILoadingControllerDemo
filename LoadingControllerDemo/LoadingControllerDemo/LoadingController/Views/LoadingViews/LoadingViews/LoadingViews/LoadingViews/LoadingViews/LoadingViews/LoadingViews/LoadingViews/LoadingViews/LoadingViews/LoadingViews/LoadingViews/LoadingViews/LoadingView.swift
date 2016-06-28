//
//  LoadingView.swift
//  LoadingControllerDemo
//
//  Created by Sapozhnik Ivan on 23.06.16.
//  Copyright © 2016 Sapozhnik Ivan. All rights reserved.
//

import UIKit

class LoadingView: UIView {

	var title: String? {
		didSet {
			didSetTitle()
		}
	}
	var message: String? {
		didSet {
			didSetMessage()
		}
	}
	
	static func viewWithStyle(style: LoadingViewStyle) -> LoadingView {
		switch style {
		case .Indicator:
			return IndicatorLoadingView(style: .Big)
		case .Multicolor:
			return MulticolorLoadingView()
		case .Custom:
			//TODO: fix this
			return UIView() as! LoadingView
		}
	}
	
	func didSetTitle() {}
	func didSetMessage() {}

}
