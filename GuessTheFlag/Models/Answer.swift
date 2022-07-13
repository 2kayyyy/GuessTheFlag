//
//  Answer.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 13/07/2022.
//

import Foundation
import SwiftUI

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}

