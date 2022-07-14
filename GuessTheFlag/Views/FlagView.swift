//
//  Flag.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 12/07/2022.
//

import SwiftUI

struct Flag: View {
    var body: some View {
        AsyncImage(url: FlagQuestion) {image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        } placeholder: {
            Image(systemName: "loading")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            }
    }
}

struct Flag_Previews: PreviewProvider {
    static var previews: some View {
        Flag()
    }
}
