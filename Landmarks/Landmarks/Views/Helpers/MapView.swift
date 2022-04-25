//
//  MapView.swift
//  Landmarks
//
//  Created by user on 2022/04/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region) // region 정보로 맵 보여주기
            .onAppear() {
                setRegin(coordinate)
            }
    }
    
    private func setRegin(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate, // 위도, 경도 가져오기
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2) // 줌 레벨
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -166.166_868))
    }
}
