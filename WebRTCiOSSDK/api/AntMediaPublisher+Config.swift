//
//  AntMedia+Statics.swift
//  WebRTCiOSSDK
//
//  Created by applebro on 13/05/24.
//

import Foundation

/// AntMediaPublisher configuration
final class AntMediaPublisherConfig {
    static let shared = AntMediaPublisherConfig()
    
    var currentDegregation: RTCDegradationPreference?
}
