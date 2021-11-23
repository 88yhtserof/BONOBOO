//
//  test.swift
//  BONOBOO
//
//  Created by limyunhwi on 2021/11/07.
//

import Foundation

struct User {
    var movies: [Movie]
    var star: Int
}
let user1: User = User(movies: movies, star: movies.count)

struct Movie {
    var name: String
    var date: String
    var poster: String
}

var movies: [Movie] = [Movie(name: "리틀포레스트", date: "2021.11.01", poster: "LittleForest.jpeg"),
                      Movie(name: "하울의 움직이는 성", date: "2021.10.01", poster: "Howl'sMovingCastle.jpeg"),
                      Movie(name: "해리포터와 마법사의 돌", date: "2021.9.01", poster: "HarryPoterAndTheSorcerer'sStone.jpeg")]
