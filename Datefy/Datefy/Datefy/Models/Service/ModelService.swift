//
//  ModelService.swift
//  Datefy
//
//  Created by Efekan Güvendik on 22.09.2024.
//

import Foundation


// MARK: - Meal
struct Meal: Codable {
    let idMeal : String?
    let strMeal : String?
}

//MARK: - PlatformResponse
struct PlatformResponse : Codable {
    let meals : [Meal]?
}
