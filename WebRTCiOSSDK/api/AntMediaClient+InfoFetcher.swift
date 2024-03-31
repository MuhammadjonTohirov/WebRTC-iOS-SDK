//
//  AntMediaClient+GetInfo.swift
//  WebRTCiOSSDK
//
//  Created by applebro on 30/03/24.
//

import Foundation

public struct AntInfoFetcher {
    var baseUrl: String
    
    public init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    public func getStreamInfo(stramId: String, completion: @escaping ([NetResStreamInfoItem]) -> Void) {
        guard let _wsUrl = URL(string: baseUrl) else {
            return
        }
        
        let url = URL(string: "\(_wsUrl.baseURL?.absoluteString ?? "")/WebRTCAppEE/rest/v2/broadcasts/list/0/1?search=\(stramId)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                completion((try? JSONDecoder().decode([NetResStreamInfoItem].self, from: data)) ?? [])
            } else {
                completion([])
            }
        }.resume()
    }
    
    public func getStreamerInfo(streamId: String, completion: @escaping (NetResStreamInfoItem?) -> Void) {
        guard let _wsUrl = URL(string: baseUrl) else {
            return
        }
        
        let url = URL(string: "\(_wsUrl.baseURL?.absoluteString ?? "")/WebRTCAppEE/rest/v2/broadcasts/\(streamId)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                completion(try? JSONDecoder().decode(NetResStreamInfoItem.self, from: data))
            } else {
                completion(nil)
            }
        }.resume()
    }
}

extension AntMediaClient {
    func getStreamerInfo(streamId: String, completion: @escaping (NetResStreamInfoItem?) -> Void) {
        AntInfoFetcher(baseUrl: URL(string: getWsUrl())?.baseURL?.absoluteString ?? "")
            .getStreamerInfo(streamId: streamId, completion: completion)
    }
    
    func getStreamersInfo(completion: @escaping ([NetResStreamInfoItem]) -> Void) {
        AntInfoFetcher(baseUrl: URL(string: getWsUrl())?.baseURL?.absoluteString ?? "")
            .getStreamInfo(stramId: self.getStreamId(), completion: completion)
    }
}
