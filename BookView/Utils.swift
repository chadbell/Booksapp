//
//  Utils.swift
//  BookView
//
//  Created by cbell on 12/13/21.
//

import Foundation

public class Utils {
    static func loadModel(completionHandler: ((BookModel, Error?) -> Void)!) {
        let decoder = JSONDecoder()
        
        var returnData: BookModel = BookModel(books: [])
        var failure: Error?

        do {
            let jsonData = readLocalFile(forName: "books_data")
            
            guard let jsonData = jsonData else {
                return
            }

            let books = try decoder.decode([Book].self, from: jsonData)
            print(books)
            returnData = BookModel(books: books)
        } catch {
            failure = error
            print(String(describing: error))
            print(error.localizedDescription)
        }
        
        completionHandler(returnData, failure)
    }
    
    private static func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
}
