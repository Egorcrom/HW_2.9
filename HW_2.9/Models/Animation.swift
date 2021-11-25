//
//  Animation.swift
//  HW_2.9
//
//  Created by Егор Кромин on 24.11.2021.
//

import UIKit
import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    let description: String
}

extension Animation {
    static func getAnimation() -> Animation {
        let preset = Spring.AnimationPreset.allCases.randomElement()
        let curve = Spring.AnimationCurve.allCases.randomElement()
        let force = Double.random(in: 1.10...1.80)
        let duration = Double.random(in: 0.30...1.40)
        let delay = Double.random(in: 0.20...0.35)
        let description = """
                        preset: \(preset?.rawValue ?? "")
                        curve: \(curve?.rawValue ?? "")
                        force: \(String(format: "%.2f",force))
                        duration: \(String(format: "%.2f",duration))
                        delay: \(String(format: "%.2f",delay))
                        """
        return Animation(preset: preset?.rawValue ?? "",
                         curve: curve?.rawValue ?? "",
                         force: force,
                         duration: duration,
                         delay: delay,
                         description: description)
    }
}
