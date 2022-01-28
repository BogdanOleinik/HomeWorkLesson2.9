//
//  ViewController.swift
//  HomeWorkLesson2.9
//
//  Created by Олейник Богдан on 26.01.2022.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    // MARK: - Private properties
    var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    //MARK: - IB Actions
    
    @IBAction func animationButton(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        //  Параметры анимации
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        
        // Запуск анимации
        animationView.animate()
        
    
    }
}

