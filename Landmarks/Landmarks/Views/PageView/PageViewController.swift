//
//  PageViewController.swift
//  Landmarks
//
//  Created by user on 2022/04/25.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

}
