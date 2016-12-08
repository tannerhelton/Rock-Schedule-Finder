//
//  ResultsViewController.swift
//  Rock Schedule Finder
//
//  Created by Tanner Helton on 11/8/16.
//  Copyright © 2016 Tanner Helton. All rights reserved.
//

import UIKit
import Alamofire

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var people: NSArray = []
    var peopleIndex = 0
    
    var day = "A"
    var activityPeriod = false
    var lateStart = false
    var massDay = false
    var searchDate = true
    var searchDayType = false
    var period = 1
    
//    @IBOutlet weak var firstname: UILabel!
//    @IBOutlet weak var lastname: UILabel!
//    @IBOutlet weak var email: UILabel!
    
    func getSheet(url: String) {
        let url = URL(string: url)
        
        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            guard error == nil else {
                print(error)
                return
            }
            
            guard let data = data else {
                print("Data is empty")
                return
            }
            
            let json =
                try! JSONSerialization.jsonObject(with: data, options: []) as! Dictionary<String, AnyObject>
            
            //callback(json)
            self.people = json["feed"]!["entry"] as! NSArray
            self.uiPump()
        }
        
        task.resume()
    }
    
    func uiPump() {
        let person = people[peopleIndex] as! Dictionary<String, AnyObject>
        let day = person["gsx$firstname"]!["$t"]!
        let activityPeriod = person["gsx$lastname"]!["$t"]!
        let lateStart = person["gsx$email"]!["$t"]!
        
        // instantly update the UI
        DispatchQueue.main.async(execute: {
            self.day = (day as? String)!
            self.activityPeriod = (activityPeriod as? Bool)!
            self.lateStart = (lateStart as? Bool)!
            
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sheet = "http://10.10.102.130"
        getSheet(url: sheet)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
