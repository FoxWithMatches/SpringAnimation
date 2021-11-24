//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Alisa Ts on 24.11.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let animationsCurves = Spring.AnimationCurve.allCases
    
    private init() {}
}
