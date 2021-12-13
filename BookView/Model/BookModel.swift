//
//  BookModel.swift
//  BookView
//
//  Created by cbell on 12/13/21.
//

import Foundation

struct BookModel {
    let books: [Book]
}

struct Book: Codable {
    let author: String
    let country: String
    let imageLink: String
    let language: String
    let link: String
    let pages: Int
    let title: String
    let year: Int
}
