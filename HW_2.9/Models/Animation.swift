//
//  Animation.swift
//  HW_2.9
//
//  Created by Егор Кромин on 24.11.2021.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getAnimation() -> Animation {
        let preset = Spring.AnimationPreset.allCases.randomElement()
        let curve = Spring.AnimationCurve.allCases.randomElement()
        let force = Double.random(in: 1.10...1.80)
        let duration = Double.random(in: 0.30...1.40)
        let delay = Double.random(in: 0.20...0.35)
        
        return Animation(preset: preset?.rawValue ?? "",
                         curve: curve?.rawValue ?? "",
                         force: force, duration: duration,
                         delay: delay)
    }
}
