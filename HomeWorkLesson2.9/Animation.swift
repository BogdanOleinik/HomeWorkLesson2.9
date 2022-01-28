//
//  Animation.swift
//  HomeWorkLesson2.9
//
//  Created by Олейник Богдан on 28.01.2022.
//


struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "SliderLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "EasenIn",
            force: Float.random(in: 0.5...2),
            duration: Float.random(in: 0.5...2),
            delay: 0.5
        )
    }
    
}



