//
//  SearchViewController.swift
//  Rock Schedule Finder
//
//  Created by Tanner Helton on 11/8/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchType: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @IBAction func searchTypeAction(_ sender: Any?) {
        if (searchType.selectedSegmentIndex == 0) {
            //Show date selection
        } else if (searchType.selectedSegmentIndex == 1) {
            //Show day type search
        }
    }
}
