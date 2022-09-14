//
//  NewsAPIResponse.swift
//  PSWNews
//
//  Created by si woong park on 2022/09/14.
//

import Foundation

struct NewsAPIResponse: Decodable{
    
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
}
