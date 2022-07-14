//
//  test.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 12/07/2022.
//

import SwiftUI

struct test: View {
    var allFlags: [FlagData] = FlagData.allFlags
    var body: some View {
        VStack{
            List {
                    Text(allFlags[3].Name)
                }
            }
        }
    }

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
