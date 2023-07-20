//
//  Post.swift
//  News-SwiftUI
//
//  Created by ranjit dhumal on 20/07/23.
//

import Foundation

struct Post :Decodable,Identifiable {
    var id : Int
    var title: String
    var url: String
}
