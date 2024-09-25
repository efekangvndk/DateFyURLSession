////
////  TestMockService.swift
////  Datefy
////
////  Created by Efekan Güvendik on 23.09.2024.
////
//
//import Foundation
//
//class TestMockService: NetworkService {
//    func fetcData(from url: URL, completion: @escaping (Data?, URLResponse?, (any Error)?) -> Void) {
//        let exampleMeal = Meal(idMeal: "12345", strMeal: "Test Meal")
//        let platformResponse = PlatformResponse(meals: [exampleMeal])
//        let data = try? JSONDecoder().encode(platformResponse)
//        completion(data, nil,nil)
//    }
//}
