//
//  ImageClassifier.swift
//  NC1
//
//  Created by Vincenzo Di Meo on 16/11/22.
//

import Foundation
import UIKit

class ImageClassifier: ObservableObject {
    
    @Published private var classifier = Classifier()
    
    var imageClass: String? {
        classifier.results
    }
    
    func detect(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect(ciImage: ciImage)
    }
}
