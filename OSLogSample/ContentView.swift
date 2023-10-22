//
//  ContentView.swift
//  OSLogSample
//
//  Created by kuehar on 2023/10/15.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                AppLogger.shared.logger.trace("Trace Log")
            }, label: {
                Text("Trace")
            })
            Button(action: {
                AppLogger.shared.logger.debug("Debug Log")
            }, label: {
                Text("Debug")
            })
            Button(action: {
                AppLogger.shared.logger.info("Info Log")
            }, label: {
                Text("Info")
            })
            Button(action: {
                AppLogger.shared.logger.notice("Notice Log")
                noticeButtonTapped()
            }, label: {
                Text("Notice")
            })
            Button(action: {
                AppLogger.shared.logger.warning("Warning Log")
            }, label: {
                Text("Warning")
            })
            Button(action: {
                AppLogger.shared.logger.error("Error Log")
            }, label: {
                Text("Error")
            })
            Button(action: {
                AppLogger.shared.logger.critical("Critical Log")
            }, label: {
                Text("Critical")
            })
            Button(action: {
                AppLogger.shared.logger.fault("Fault Log")
                faultButtonTapped()
            }, label: {
                Text("Fault")
            })
        }
    }
    
    func faultButtonTapped(){
        AppLogger.shared.logger.fault(#function)
    }
    func noticeButtonTapped(){
        AppLogger.shared.logger.notice(#function)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
