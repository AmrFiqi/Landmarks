//
//  PageViewController.swift
//  SwiftUILearning
//
//  Created by Amr El-Fiqi on 06/08/2023.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View> :UIViewControllerRepresentable {
    
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIViewControllerType, context: Context) {
        pageViewController.setViewControllers([UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
