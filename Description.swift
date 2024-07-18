//
//  Description.swift
//  Pokemon
//
//  Created by Justin Spencer on 4/28/24.
//

import Foundation
import SwiftData

@Model
class Description: Identifiable {
     var title: String
     var review: String
    

    init(title: String, review: String) {
        self.title = title
        self.review = review
        
    }
}
