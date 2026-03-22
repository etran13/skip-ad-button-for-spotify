//
//  ViewController.swift
//  Skip Button For Spotify
//
//  Created by Ellie Tran on 3/19/26.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var button1: NSButton!
    
    var timer: Timer?
    
    var spotifyStarter: SpotifyStarter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    ///When button1 is clicked, this function will quit Spotify.
    @IBAction func handleButtonClick(_ sender: Any) {
        guard let app = NSRunningApplication.runningApplications(withBundleIdentifier: "com.spotify.client").first else {
            return
        }
            
        let starter = SpotifyStarter(object: app) //Create an observer of app in order to recieve notification on termination
        
        app.forceTerminate()
        //waitForQuit()
    }
    
    
}

