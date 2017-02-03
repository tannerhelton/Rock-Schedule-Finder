//
//  SearchViewController.swift
//  Rock Schedule Finder
//
//  Created by Tanner Helton on 11/8/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SearchViewController: UIViewController {
    
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var periodSelection: UISegmentedControl!
    
    var day = "A"
    var period = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let geturl = "https://www.googleapis.com/calendar/v3/calendars/rockhursths.edu_vm6bt9h5uust4qkr1tqnkmtnac@group.calendar.google.com/events?singleEvents=true&orderBy=startTime&sortOrder=ascending&timeMin=2017-01-01T00:00:00-05:00&timeMax=2017-04-12T00:00:00-05:00&key=AIzaSyBlp8z5roe3qRkLqngQvEhRvS6pes7u82g"
        
        
        Alamofire.request(geturl , method: .get, encoding: JSONEncoding(options: [])).responseJSON { response in
            debugPrint(response)
            
            if let result = response.result.value {
                let json = JSON(result as! NSDictionary)
                let tasks = json["items"].arrayValue
                
                // display only the last task
                let subject = tasks[tasks.count - 1]["0"].string
                let description = tasks[tasks.count - 1]["summary"].string
                print(subject)
                print(description)
                print("This is it: \(description)")
            } else {
                print("Error")
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//    }
    
    @IBAction func search(_ sender: UIButton) {
        period = periodSelection.selectedSegmentIndex + 1
        
    }
}
