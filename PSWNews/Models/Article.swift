//
//  Article.swift
//  PSWNews
//
//  Created by si woong park on 2022/09/14.
//

import Foundation

struct Article{
    let source: Source
    
    let title: String
    let url: String
    let publishedAt: Date
    
    let author: String?
    let description: String?
    let urlToImage: String?
    
    var authorText: String{
        author ?? ""
    }
    var descriptionText: String{
        description ?? ""
    }
    var articleURL: URL{
        URL(string: url)!
    }
    var imageURL: URL? {
        guard let urlToImage = urlToImage else{
            return nil
        }
        return URL(string: urlToImage)
    }
    
}

extension Article: Codable{}
extension Article: Equatable{}
extension Article: Identifiable{
    var id: String {url}
}

extension Article{
    static var previewData: [Article]{
        let previewDataURL =
        Bundle.main.url(forResource: "",
        withExtension: "json")!
        let data = try! Data(contentsOf: previewDataURL)
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dataDecodingStrategy = .iso8601
    }
}

struct Source{
    let name: String
}

extension Source: Codable{}
extension Source: Equatable{}


