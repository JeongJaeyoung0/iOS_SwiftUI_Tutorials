//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jeong on 2022/04/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData() // 데이터가 변경 되었을때 새로고침 하려는 코드인지?
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData) // 데이터가 변경 되었을때 새로고침 하려는 코드인지?
        }
    }
}
