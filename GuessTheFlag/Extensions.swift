//
//  Extensions.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 12/07/2022.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
