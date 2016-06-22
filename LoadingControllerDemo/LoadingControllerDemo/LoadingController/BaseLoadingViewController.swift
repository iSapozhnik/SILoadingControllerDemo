//
//  BaseLoadingViewController.swift
//  LoadingControllerDemo
//
//  Created by Sapozhnik Ivan on 23.06.16.
//  Copyright © 2016 Sapozhnik Ivan. All rights reserved.
//

import UIKit

enum ContentType {
	case Undefined
	case Empty
	case NoData
	case Failure
	case Content
	case Loading
}

class BaseLoadingViewController: UIViewController {

	@IBOutlet var contentView: UIView!
	
	var errorTitle: String = NSLocalizedString("Oops, something went wrong", comment: "")
	var errorMessage: String?
	var errorIcon: UIImage?
	var errorAction: String?
	
	var noDataAction: String?
	var moDataMessage: String = NSLocalizedString("No data availabel", comment: "")

	var contentViewAllwaysAvailabel: Bool = false
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
	}
	
	//MARK:- Default views
	
	func defaultNoDataView() -> UIView {
		//TODO: create default view for No Data
		return UIView()
	}
	
	func defaultErrorView() -> UIView {
		//TODO: create default view for Error
		return UIView()
	}
	func defaultLoadingView() -> UIView {
		//TODO: create default view for Loading
		return UIView()
	}

}
