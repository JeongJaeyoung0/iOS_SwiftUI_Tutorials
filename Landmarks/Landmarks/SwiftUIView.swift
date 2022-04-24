//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Jeong on 2022/04/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("sombreroGalaxy")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}