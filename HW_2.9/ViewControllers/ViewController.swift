//
//  ViewController.swift
//  HW_2.9
//
//  Created by Егор Кромин on 24.11.2021.
//


import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var textView: UITextView!
    @IBOutlet var button: UIButton!
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInfo()
        button.setTitle("Start \(animation.preset)", for: .normal)
    }
    @IBAction func buttonPressed(_ sender: Any) {
        updateInfo()
        startAnimation()
        animation = Animation.getAnimation()
        button.setTitle("Start \(animation.preset)", for: .normal)
    }
    func updateInfo() {
        textView.text = """
                        preset: \(animation.preset)
                        curve: \(animation.curve)
                        force: \(String(format: "%.2f",animation.force))
                        duration: \(String(format: "%.2f",animation.duration))
                        delay: \(String(format: "%.2f",animation.delay))
                        """
    }
    private func startAnimation() {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
    }
}

