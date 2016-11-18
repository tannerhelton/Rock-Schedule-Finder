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
    @IBOutlet weak var dateSelection: UIDatePicker!
    @IBOutlet weak var sixDaySelection: UISegmentedControl!
    @IBOutlet weak var boolActivityPeriod: UISwitch!
    @IBOutlet weak var boolLateStart: UISwitch!
    @IBOutlet weak var boolMassDay: UISwitch!
    @IBOutlet weak var txtActivityPeriod: UILabel!
    @IBOutlet weak var txtLateStart: UILabel!
    @IBOutlet weak var txtMassDay: UILabel!
    @IBOutlet weak var eightPeriodSelection: UISegmentedControl!
    
    var day = "A"
    var activityPeriod = false
    var lateStart = false
    var massDay = false
    var searchDate = true
    var searchDayType = false
    var period = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sixDaySelection.alpha = 0
        boolActivityPeriod.alpha = 0
        boolLateStart.alpha = 0
        boolMassDay.alpha = 0
        txtActivityPeriod.alpha = 0
        txtLateStart.alpha = 0
        txtMassDay.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    func dateSearch() {
        dateSelection.alpha = 255
        sixDaySelection.alpha = 0
        boolActivityPeriod.alpha = 0
        boolLateStart.alpha = 0
        boolMassDay.alpha = 0
        txtActivityPeriod.alpha = 0
        txtLateStart.alpha = 0
        txtMassDay.alpha = 0
        searchDate = true
        searchDayType = false
    }
    
    func dayTypeSearch() {
        dateSelection.alpha = 0
        sixDaySelection.alpha = 255
        boolActivityPeriod.alpha = 255
        boolLateStart.alpha = 255
        boolMassDay.alpha = 255
        txtActivityPeriod.alpha = 255
        txtLateStart.alpha = 255
        txtMassDay.alpha = 255
        searchDayType = true
        searchDate = false
    }
    
    func updateCriteria() {
        if (sixDaySelection.selectedSegmentIndex == 0) {
            day = "A"
        } else if (sixDaySelection.selectedSegmentIndex == 1) {
            day = "B"
        } else if (sixDaySelection.selectedSegmentIndex == 2) {
            day = "C"
        } else if (sixDaySelection.selectedSegmentIndex == 3) {
            day = "D"
        } else if (sixDaySelection.selectedSegmentIndex == 4) {
            day = "E"
        } else if (sixDaySelection.selectedSegmentIndex == 5) {
            day = "F"
        }
        
        if (boolActivityPeriod.isOn == true) {
            activityPeriod = true
        } else {
            activityPeriod = false
        }
        
        if (boolMassDay.isOn == true) {
            massDay = true
        } else {
            massDay = false
        }
        
        if (boolLateStart.isOn == true) {
            lateStart = true
        } else {
            lateStart = false
        }
        
        if (eightPeriodSelection.selectedSegmentIndex == 0) {
            period = 1
        } else if (eightPeriodSelection.selectedSegmentIndex == 1) {
            period = 2
        } else if (eightPeriodSelection.selectedSegmentIndex == 2) {
            period = 3
        } else if (eightPeriodSelection.selectedSegmentIndex == 3) {
            period = 4
        } else if (eightPeriodSelection.selectedSegmentIndex == 4) {
            period = 5
        } else if (eightPeriodSelection.selectedSegmentIndex == 5) {
            period = 6
        } else if (eightPeriodSelection.selectedSegmentIndex == 6) {
            period = 7
        } else if (eightPeriodSelection.selectedSegmentIndex == 7) {
            period = 8
        }
    }
    
    @IBAction func searchTypeAction(_ sender: Any?) {
        if (searchType.selectedSegmentIndex == 0) {
            //Show date selection
            dateSearch()
        } else if (searchType.selectedSegmentIndex == 1) {
            //Show day type search
            dayTypeSearch()
        }
    }
    
    @IBAction func search(_ sender: UIButton) {
        updateCriteria()
        if (searchDate == true) {
            print("Date: \(dateSelection.date) | Period: \(period)")
        } else {
            print("Day: \(day) | Period: \(period) | Activity Period: \(activityPeriod) | Late Start: \(lateStart) | Mass Day: \(massDay)")
        }
    }
}
