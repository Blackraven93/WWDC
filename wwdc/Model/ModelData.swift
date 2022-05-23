//
//  ModelData.swift
//  wwdc
//
//  Created by apple developer academy on 2022/05/24.
//

import Foundation

var books: [Book] = load("bookData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else { fatalError("\(filename)을 발견할 수 없습니다.") }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self) : \(error)")
    }
            
}
