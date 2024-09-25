//
//  URLSessionNetworkService.swift
//  Datefy
//
//  Created by Efekan Güvendik on 23.09.2024.
//

import Foundation

protocol NetworkService {
    func fetcData(from url: URL, completion: @escaping (Data?, URLResponse? , Error?)-> Void)
}

class URLSessionNetworkService: NetworkService {
    func fetcData(from url: URL, completion: @escaping (Data?, URLResponse?, (any Error)?) -> Void) {
        URLSession.shared.dataTask(with: url,completionHandler: completion).resume()
    }
}
