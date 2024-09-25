////
////  NetworkServiceTests.swift
////  Datefy
////
////  Created by Efekan Güvendik on 23.09.2024.
////
//
//import XCTest
//
//class NetworkServiceTests: XCTestCase {
//    
//    func testMockNetworkService() {
//        // 1. MockNetworkService örneği oluştur
//        let mockService = MockNetworkService()
//        
//        // 2. Sahte URL
//        let testURL = URL(string: "https://test.com")!
//        
//        // 3. Veri çekme işlemini başlat
//        mockService.fetchData(from: testURL) { data, response, error in
//            
//            // 4. Veriyi test et
//            XCTAssertNotNil(data, "Veri nil olamaz")
//            
//            // 5. JSON decode işlemi
//            let platformResponse = try? JSONDecoder().decode(PlatformResponse.self, from: data!)
//            
//            // 6. Assert ile kontrol
//            XCTAssertEqual(platformResponse?.meals?.first?.idMeal, "12345")
//            XCTAssertEqual(platformResponse?.meals?.first?.strMeal, "Test Meal")
//        }
//    }
//}
