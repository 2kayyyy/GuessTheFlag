//
//  Generator.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 14/07/2022.
//

import Foundation

func random_number() -> Int
{
    let random: Int = Int.random(in: 0...258)
    return random
}
    
func random_number1() -> Int
{
    var random: Int = Int.random(in: 0...258)
   while random == random_number()
  {
      random = Int.random(in: 0...258)
  }
    return random
}

func random_number2() -> Int
{
    var random: Int = Int.random(in: 0...258)
   while random == random_number() || random == random_number1()
  {
      random = Int.random(in: 0...258)
  }
    return random
}

func random_number3() -> Int
{
    var random: Int = Int.random(in: 0...258)
    while random == random_number() || random == random_number1() || random == random_number2()
  {
      random = Int.random(in: 0...258)
  }
    return random
}

    
var allFlags: [FlagData] = FlagData.allFlags
var random_numb: Int = random_number()
public var random_name: AttributedString = allFlags[random_numb].Name
public var random_code: String = allFlags[random_numb].Code

public var random_name1: AttributedString = allFlags[random_number1()].Name
public var random_name2: AttributedString = allFlags[random_number2()].Name
public var random_name3: AttributedString = allFlags[random_number3()].Name

