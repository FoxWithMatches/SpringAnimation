//
//  Animation.swift
//  SpringAnimation
//
//  Created by Alisa Ts on 24.11.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var descriptionAnimation: String {
    """
        Preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(preset: DataManager.shared.animations.randomElement()?.rawValue ?? "fadeIn",
                  curve: DataManager.shared.animationsCurves.randomElement()?.rawValue ?? "linear",
                  force: Float.random(in: 0.2...1.5),
                  duration: Float.random(in: 0.8...2.6),
                  delay: Float.random(in: 0.1...0.5))
    }
}
