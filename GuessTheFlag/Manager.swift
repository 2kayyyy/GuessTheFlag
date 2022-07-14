//
//  Manager.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 14/07/2022.
//

import Foundation
import SwiftUI

var length = 0
var index = 0
//    @Published private(set) var reachedEnd = false
//    @Published private(set) var answerSelected = false
//    @Published private(set) var question: String = ""
//    @Published private(set) var answerChoices: [Answer] = []
//    @Published private(set) var progress: CGFloat = 0.00

    
    func fetchTrivia() -> URL {
        guard let url = URL(string: "https://countryflagsapi.com/png/"+random_code) else { fatalError("Missiong Image")}
        
        return url
    }

    let FlagQuestion: URL = fetchTrivia()
