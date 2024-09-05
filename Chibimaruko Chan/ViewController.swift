//
//  ViewController.swift
//  Chibimaruko Chan
//
//  Created by 陳曉潼 on 2024/9/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var chanImageView: UIImageView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!
    @IBOutlet weak var alphaSliderLabel: UILabel!
    
    
    @IBOutlet weak var radiusSlider: UISlider!
    @IBOutlet weak var borderSlider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        chanImageView.layer.cornerRadius = 50
        
        redSlider.setThumbImage(UIImage(named: "cherry"), for: .normal)
        greenSlider.setThumbImage(UIImage(named: "cherry"), for: .normal)
        blueSlider.setThumbImage(UIImage(named: "cherry"), for: .normal)
        alphaSlider.setThumbImage(UIImage(named: "cherry"), for: .normal)
        
        func setLabelValue() {
            redSliderLabel.text = String(Int(redSlider.value*255))
            greenSliderLabel.text = String(Int(greenSlider.value*255))
            blueSliderLabel.text = String(Int(blueSlider.value*255))
            alphaSliderLabel.text = String(Int(alphaSlider.value*10))
        }
    }


    @IBAction func changeColor(_ sender: Any) {
        chanImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redSliderLabel.text = String(Int(redSlider.value*255))
        greenSliderLabel.text = String(Int(greenSlider.value*255))
        blueSliderLabel.text = String(Int(blueSlider.value*255))
        alphaSliderLabel.text = String(Int(alphaSlider.value*10))
    }
    
    @IBAction func random(_ sender: Any) {
        redSlider.setValue(.random(in: 0...1), animated: true)
        greenSlider.setValue(.random(in: 0...1), animated: true)
        blueSlider.setValue(.random(in: 0...0), animated: true)
        alphaSlider.setValue(.random(in: 0...1), animated: true)
        chanImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redSliderLabel.text = String(Int(redSlider.value*255))
        greenSliderLabel.text = String(Int(greenSlider.value*255))
        blueSliderLabel.text = String(Int(blueSlider.value*255))
        alphaSliderLabel.text = String(Int(alphaSlider.value*10))
    }
    
    
    @IBAction func reset(_ sender: Any) {
        redSlider.setValue(0, animated: true)
        greenSlider.setValue(0, animated: true)
        blueSlider.setValue(0, animated: true)
        alphaSlider.setValue(0, animated: true)
        chanImageView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        redSliderLabel.text = String(Int(redSlider.value*255))
        greenSliderLabel.text = String(Int(greenSlider.value*255))
        blueSliderLabel.text = String(Int(blueSlider.value*255))
        alphaSliderLabel.text = String(Int(alphaSlider.value*10))
    }
    
    
    @IBAction func radius(_ sender: Any) {
        chanImageView.layer.cornerRadius = CGFloat(radiusSlider.value)
        
    }
    
    @IBAction func border(_ sender: Any) {
        chanImageView.clipsToBounds = true
        chanImageView.layer.borderWidth = CGFloat(borderSlider.value)
    }
    

    
    @IBAction func radiusSwitch(_ sender: UISwitch) {
        if sender.isOn{
            radiusSlider.isHidden = false
        }else{
            radiusSlider.isHidden = true
        }
    }
    @IBAction func borderSwitch(_ sender: UISwitch) {
        if sender.isOn{
            borderSlider.isHidden = false
        }else{
            borderSlider.isHidden = true
        }


    }
    
    
}


