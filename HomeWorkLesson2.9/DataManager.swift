//
//  DataManager.swift
//  HomeWorkLesson2.9
//
//  Created by Олейник Богдан on 28.01.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .SlideLeft,
        .SlideRight,
        .SlideDown,
        .SlideUp,
        .SqueezeLeft,
        .SlideRight,
        .SqueezeDown,
        .SqueezeUp,
        .FadeIn,
        .FadeOut,
        .FadeOutIn,
        .FadeInLeft,
        .FadeInRight,
        .FadeInDown,
        .FadeInUp
    ]
    
    let curves: [Spring.AnimationCurve] = [
        .EaseIn,
        .EaseOut,
        .EaseInOut,
        .Linear,
        .Spring,
        .EaseInSine,
        .EaseOutSine,
        .EaseInOutSine,
        .EaseInQuad,
        .EaseOutQuad,
        .EaseInOutQuad,
        .EaseInCubic
    ]
    
    private init() {}
}
