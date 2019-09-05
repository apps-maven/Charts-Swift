//
//  ViewController.swift
//  Charts
//
//  Created by osx on 13/08/19.
//  Copyright © 2019 osx. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ChartDelegate {

    @IBOutlet weak var viewChart: Chart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let data2 = [7,80,0,60,90.0,45,85,]
        
        let data1 = [0,40,65,35,80.0,55,65]
        
        let data3 = [17,84,46,65,85.0,15,45]
        
        //            let data = [0, 6.5]
        //          let series = ChartSeries.init(data)
        //          series.area = false
        //          chart.xLabels = [0, 30, 60, 90, 120, 150, 180,210,240,270,300,330,360]
        //          chart.xLabelsFormatter = { String(Int(round($1))) + "h" }
        //          chart.add(series)
        
        //            chart.maxX = 25
        
        //            chart.maxY = 100
        //
        //            (x: 0.0, y: 5.0), (x: 1.0, y: 8.0), (x: 2.0, y: 50.0), (x: 3.0, y: 13.0), (x: 4.0, y: 80.0), (x: 5.0, y: 2.5)
        
        viewChart.yLabels = [0, 10, 20, 30, 40, 50, 60,70,80]
        
        viewChart.xLabelsSkipLast = false
        //            chart.yLabelsFormatter = { String(Int(round($1))) + "h" }
        
        var arrChart = [ChartSeries]()
        //
        ////            arrChart.append(series)
        //
        let series1 = ChartSeries.init(data1, colorFor: UIColor.blue)//Append the bigger count first.
        
        let series2 = ChartSeries.init(data2, colorFor: UIColor.blue)
        
        let series3 = ChartSeries.init(data3, colorFor: UIColor.blue)
        //            chart.arrMonths = ["Jan","Feb","Mar","May","June","July","Aug","Sept","Oct","Nov","Dec"]
        //
        //            chart.yLabelsOnRightSide = false
        //
        arrChart.append(series2)
        
        arrChart.append(series1)
        
        arrChart.append(series3)
        //
        //            chart.add(arrChart)
        
        //            chart.showXLabelsAndGrid = false
        
        
        //            chart.showYLabelsAndGrid = false
        //          let series = ChartSeries(data: data)
        viewChart.add(arrChart)
        
    }


    
    func didTouchChart(_ chart: Chart, indexes: Array<Int?>, x: Double, left: CGFloat) {
        for (seriesIndex, dataIndex) in indexes.enumerated() {
            if let value = chart.valueForSeries(seriesIndex, atIndex: dataIndex) {
                print("Touched series: \(seriesIndex): data index: \(dataIndex!); series value: \(value); x-axis value: \(x) (from left: \(left))")
            }
        }
    }
    
    func didFinishTouchingChart(_ chart: Chart) {
        
    }
    
    func didEndTouchingChart(_ chart: Chart) {
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        
        // Redraw chart on rotation
        viewChart.setNeedsDisplay()
        
    }
}

