//
//  ViewController.swift
//  loopbasic
//
//  Created by robert on 2022/11/10.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var showLabel: UILabel!
    var index = 0
    var show = Array(repeating: "", count: 4)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderControl.value = 1
        showLabel.text = "🧋"
        numberLabel.text = "1"
        
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        index = sender.selectedSegmentIndex
        sliderControl.value = 1
        showLabel.text = "🧋"
        numberLabel.text = "1"
    }
    

    @IBAction func sliderControl(_ sender: UISlider) {
        //讓slider四捨五入取整數
        sender.value = sender.value.rounded()
        //slider數值
        numberLabel.text = "\(Int(sender.value))"
        
        //正方形
        var squareLabel = ""
        for _ in 1...Int(sender.value){
            for _ in 1...Int(sender.value){
                squareLabel += "🧋"
            }
            squareLabel += "\n"
        }
        show[0] = squareLabel
        //三角形
        var triangleLabel = ""
        for i in 1...Int(sender.value){
            for _ in 1...i{
                triangleLabel += "🧋"
            }
            triangleLabel += "\n"
        }
        show[1] = triangleLabel
        //金字塔
        let count = sliderControl.value
        var pyramidLabel = ""
        for i in 1...Int(count){
            for _ in i..<Int(count){
                pyramidLabel += "✨"
            }
            let appleCount = i * 2 - 1
            for _ in 1...appleCount{
                pyramidLabel += "🧋"
            }
            pyramidLabel += "\n"
        }
        show[2] = pyramidLabel
        //菱形
        var diamond = ""
        let count1 = Int(sliderControl.value)
        var greenApleCount = count1 - 1
        var redAppleCount = 1
        for i in 1...count1 * 2 - 1{
            for _ in 0..<greenApleCount{
                diamond += "✨"
            }
            for _ in 1...redAppleCount{
                diamond += "🧋"
            }
            if i < count1 {
                greenApleCount -= 1
                redAppleCount += 2
            }else{
                greenApleCount += 1
                redAppleCount -= 2
            }
            diamond += "\n"
        }
        show[3] = diamond
        showLabel.text = show[index]
    }
  
}
    
