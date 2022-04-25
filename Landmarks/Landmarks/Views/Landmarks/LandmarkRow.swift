//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by user on 2022/04/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark // Landmark 모델의 데이터를 사용하는?
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0]) // json 데이터의 특정 번호 미리보기
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70)) // 목록의 행과 비슷한 크기로 보기
    }
}
