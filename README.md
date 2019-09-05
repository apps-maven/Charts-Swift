# Charts-Swift

<img src="https://user-images.githubusercontent.com/54585056/64342614-8ae3a000-d008-11e9-8c5e-cc7799002ed4.png"/>





    dataSource: 

        let data2 = [7,80,0,60,90.0,45,85,100]
        
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
        
        viewChart.yLabels = [0, 10, 20, 30, 40, 50, 60,70,80,90,100]
        
        viewChart.xLabelsSkipLast = false
        //            chart.yLabelsFormatter = { String(Int(round($1))) + "h" }
        
        var arrChart = [ChartSeries]()
        //
        ////            arrChart.append(series)
        
        //
        let series1 = ChartSeries.init(data1, colorFor: uicolorPink)//Append the bigger count first.
        
        let series2 = ChartSeries.init(data2, colorFor: uicolorBlue)
        
        let series3 = ChartSeries.init(data3, colorFor: uicolorPurple)
        //            chart.arrMonths = ["Jan","Feb","Mar","May","June","July","Aug","Sept","Oct","Nov","Dec"]
        //
        //            chart.yLabelsOnRightSide = false
        //
        arrChart.append(series2)
        
        arrChart.append(series1)
        
        arrChart.append(series3)
        
        viewChart.showXLabelsAndGrid = false
        
        viewChart.showYLabelsAndGrid = false
        
        viewChart.add(arrChart)
        
        
        
       <h4>Let us know!</h4> 
<p>We’d be really happy if you sent us links to your projects where you use our component. Just send an email to amarjeet@appsmaventech.com And do let us know if you have any questions or suggestion regarding the animation.

P.S. We’re going to publish more awesomeness wrapped in code and a tutorial on how to make UI for Android (iOS) better than better. Stay tuned!</p>
