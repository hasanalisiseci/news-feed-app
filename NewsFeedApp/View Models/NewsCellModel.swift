//
//  TableViewCellModel.swift
//  NewsFeedApp
//
//  Created by Hasan Ali Şişeci on 23.10.2021.
//

import Foundation

class NewsCellModel {
    let title: String
    let subtitle: String
    let imageURL: URL?
    var imageData: Data? = nil
    
    init(title: String,
         subtitle: String,
         imageURL: URL?
    ) {
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
    }
}
