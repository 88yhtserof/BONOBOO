//
//  test.swift
//  BONOBOO
//
//  Created by limyunhwi on 2021/11/07.
//

import Foundation

struct User {
    var posters: [String]
    var star: Int
}

var posters: [String] = ["LittleForest.jpeg",
                         "Howl'sMovingCastle.jpeg",
                         "HarryPoterAndTheSorcerer'sStone.jpeg"]

let user1: User = User(posters: posters, star: posters.count)
