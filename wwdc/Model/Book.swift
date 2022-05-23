//
//  File.swift
//  wwdc
//
//  Created by apple developer academy on 2022/05/24.
//

import Foundation
import SwiftUI

struct Book: Codable, Hashable {
    var coverName: String
    var title : String
    var author : String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
