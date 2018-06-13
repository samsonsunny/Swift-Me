//
//  SecondViewController.swift
//  Swift Me
//
//  Created by Sam on 11/06/18.
//  Copyright © 2018 Samson Sunny. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

	public var topic: String = ""
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		self.title = topic
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

