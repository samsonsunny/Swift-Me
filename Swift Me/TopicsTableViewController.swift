//
//  FirstViewController.swift
//  Swift Me
//
//  Created by Sam on 11/06/18.
//  Copyright © 2018 Samson Sunny. All rights reserved.
//

import UIKit

class TopicsTableViewController: UITableViewController {

	var topics = ["Introduction",
				  "Introduction to iOS Development",
				  "Introduction to Swift Programming"
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let storyBoard = UIStoryboard(name: "Main", bundle: nil)
		guard let vc = storyBoard.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else {
			return
		}
		
		vc.topic = topics[indexPath.row]
		self.navigationController?.pushViewController(vc, animated: true)
	}
}

