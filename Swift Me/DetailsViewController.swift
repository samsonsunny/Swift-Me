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
	
	@IBOutlet weak var subtitle: UILabel!
	@IBOutlet weak var para1: UITextField!
	@IBOutlet weak var para2: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		self.title = topic
		
		if let path = Bundle.main.path(forResource: "Details", ofType: "json") {
			do {
				let jsonData = try Data(contentsOf: URL(fileURLWithPath: path))
				let jsonResult = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves)
				if let result = jsonResult as? Dictionary<String, AnyObject>{
					subtitle.text = result["Introduction"]?["SubTitle"] as? String
				}
			} catch {
				
			}
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

