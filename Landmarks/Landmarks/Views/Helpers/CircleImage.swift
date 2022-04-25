//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Jeong on 2022/04/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
//        Image("turtlerock") // 이미지 파일명
        image
            .clipShape(Circle()) // 원형으로 이미지 자르기
            .overlay{
                Circle().stroke(.white, lineWidth: 4) // 윤곽선
            }
            .shadow(radius: 7) // 그림자
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
