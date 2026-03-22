//
//  SpotifyController.swift
//  Skip Button For Spotify
//
//  Created by Ellie Tran on 3/21/26.
//

import Foundation
import AppKit

///This class is an observer of NSRunningApplication. It will be notified when isTerminated becomes true.
class SpotifyStarter: NSObject {
    @objc var objectToObserve: NSRunningApplication
    var observation: NSKeyValueObservation?
    
    
    init(object: NSRunningApplication) {
        objectToObserve = object
        super.init()
        
        observation = observe(
            \.objectToObserve.isTerminated,
        ) { object, change in
            print("isTerminated just changed to True")
        }
        
    }
}
