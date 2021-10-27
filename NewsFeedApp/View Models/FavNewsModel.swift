//
//  FavNewsModel.swift
//  NewsFeedApp
//
//  Created by Hasan Ali Şişeci on 25.10.2021.
//

import Foundation
import RealmSwift


class FavNewsModel: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var subtitle: String = ""
    @objc dynamic var imageURL: String = ""
    @objc dynamic var imageData: Data? = nil
    @objc dynamic var author: String = ""
    @objc dynamic var newsDate: String = ""
    @objc dynamic var newsURL: String = ""
}
