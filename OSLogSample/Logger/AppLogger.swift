//
//  AppLogger.swift
//  OSLogSample
//
//  Created by kuehar on 2023/10/16.
//

import Foundation
import OSLog

class AppLogger {
    static let shared = AppLogger()
    let logger: Logger
    
    private init() {
        self.logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "ApplicationCode")
    }
}
