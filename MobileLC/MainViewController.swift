//
//  MainViewController.swift
//  MobileLC
//
//  Created by imacX on 12/20/18.
//  Copyright © 2018 imacX. All rights reserved.
//

import Foundation
import UIKit
import Charts


class MainViewController:UIViewController{
    
    @IBOutlet weak var chart: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func setChart(dataPoints: [String], values: [Double]) {
        chart.noDataText = "You need to provide data for the chart."
        
    }
}
