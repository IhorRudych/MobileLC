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
    var months: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = [0.0,1.0,1.2,1.3,1.4]
        let y = [0.0,95.0,95.0,5.0,5.0]
       
        setChart(x: x, y: y)
        
    }
    func setChart(x: [Double], y: [Double]) {
        chart.noDataText = "You need to provide data for the chart."
        var dataEntries:[ChartDataEntry] = []
        for i in 0..<x.count{
            let dataEntry = ChartDataEntry(x: x[i], y: y[i])
            dataEntries.append(dataEntry)
        }
        
        let dataSet = LineChartDataSet(values: dataEntries, label: "Lines")
        let chartData = LineChartData(dataSet: dataSet)
        chart.data = chartData
    }
}
