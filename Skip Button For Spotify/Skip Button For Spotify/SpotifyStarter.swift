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
            self.startSpotify()
        }
        
    }
    
    func startSpotify() {
        print("isTerminated just changed to True")
        // Source - https://stackoverflow.com/a/58241536
        // Posted by vookimedlo
        // Retrieved 2026-03-19, License - CC BY-SA 4.0
        guard let url: URL = NSWorkspace.shared.urlForApplication(withBundleIdentifier: "com.spotify.client") else {
            return } //Get the URL for the application with the identifier .com.apple.Terminal

        let configuration = NSWorkspace.OpenConfiguration()
        configuration.arguments = ["/bin"]
        NSWorkspace.shared.openApplication(at: url,
                                           configuration: configuration,
                                           completionHandler: nil)
        //self.stopWatching()
    }
    
    func stopWatching() {
        // Setting to nil cancels the observation automatically
        observation = nil
    }
}
