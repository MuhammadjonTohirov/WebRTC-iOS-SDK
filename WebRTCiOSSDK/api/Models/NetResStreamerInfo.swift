//
//  NetResStreamerInfo.swift
//  WebRTCiOSSDK
//
//  Created by applebro on 30/03/24.
//

import Foundation

public struct NetResStreamInfoItem: Codable {
    public var streamId: String?
    public var status: String?
    public var playListStatus: String?
    public var type: String?
    public var publishType: String?
    public var name: String?
    public var description: String?
    public var publish: Bool?
    public var date: Int?
    public var plannedStartDate: Int?
    public var plannedEndDate: Int?
    public var duration: Int?
    public var endPointList: String?
    public var playListItemList: String?
    public var publicStream: Bool?
    public var is360: Bool?
    public var listenerHookURL: String?
    public var category: String?
    public var ipAddr: String?
    public var username: String?
    public var password: String?
    public var quality: String?
    public var speed: Int?
    public var streamUrl: String?
    public var originAdress: String?
    public var mp4Enabled: Int?
    public var webMEnabled: Int?
    public var expireDurationMS: Int?
    public var rtmpURL: String?
    public var zombi: Bool?
    public var pendingPacketSize: Int?
    public var hlsViewerCount: Int?
    public var dashViewerCount: Int?
    public var webRTCViewerCount: Int?
    public var rtmpViewerCount: Int?
    public var startTime: Int?
    public var receivedBytes: Int?
    public var bitrate: Int?
    public var userAgent: String?
    public var latitude: String?
    public var longitude: String?
    public var altitude: String?
    public var mainTrackStreamId: String?
    public var subTrackStreamIds: [String]?
    public var absoluteStartTimeMs: Int?
    public var webRTCViewerLimit: Int?
    public var hlsViewerLimit: Int?
    public var dashViewerLimit: Int?
    public var subFolder: String?
    public var currentPlayIndex: Int?
    public var metaData: String?
    public var playlistLoopEnabled: Bool?
    public var updateTime: Int?
}
