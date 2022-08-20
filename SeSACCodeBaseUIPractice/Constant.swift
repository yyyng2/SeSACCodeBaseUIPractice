//
//  Constant.swift
//  SeSACCodeBaseUIPractice
//
//  Created by Y on 2022/08/20.
//

import Foundation

struct EndPoint{
    static let tmdbURL = "https://api.themoviedb.org/3/trending/movie/week?"
    static let castsURL = "https://api.themoviedb.org/3/movie/"
    static let profileURL = "https://www.themoviedb.org/t/p/w500/"
    static let youtubeURL = "https://api.themoviedb.org/3/movie/"
    static let youtube1 = "https://www.youtube.com/watch?v="
    static let youtube2 = "https://www.youtube.com/embed/"
    static let similar = "https://api.themoviedb.org/3/movie/"
    static let popularShow = "https://api.themoviedb.org/3/tv/popular?"
}

struct Movie{
    var movieName: String
    var movieID: Int
    var movieRelease: String
    var moviePoster: String
    var movieVoteAverage: Double
    var movieGenre: String
    var movieBackground: String
    var overView: String
}
