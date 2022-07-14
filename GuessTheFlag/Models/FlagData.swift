//
//  FlagManager.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 12/07/2022.
//


import Foundation

struct FlagData: Codable {
    
    var Code: String
    var Name: AttributedString
    static let allFlags: [FlagData] = Bundle.main.decode(file: "data_json.json")
}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project!")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) in the project!")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in the project!")
        }
        
        return loadedData
        
    }
    
}

