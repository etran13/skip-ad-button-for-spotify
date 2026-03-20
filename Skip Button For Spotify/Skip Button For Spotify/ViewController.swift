//
//  ViewController.swift
//  Skip Button For Spotify
//
//  Created by Ellie Tran on 3/19/26.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var button1: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    ///When button1 is clicked, this function will open Spotify.
    @IBAction func handleButtonClick(_ sender: Any) {
        
        if let app = NSRunningApplication.runningApplications(withBundleIdentifier: "com.spotify.client").first { //Get the first item in the collection of running apps with the bundle identifier of Spotify
            print("Terminating...")
            app.terminate()
        }
        // Source - https://stackoverflow.com/a/58241536
        // Posted by vookimedlo
        // Retrieved 2026-03-19, License - CC BY-SA 4.0

        guard let url: URL = NSWorkspace.shared.urlForApplication(withBundleIdentifier: "com.spotify.client") else {
            return } //Get the URL for the application with the identifier .com.apple.Terminal
        print("Restarting...")

        let configuration = NSWorkspace.OpenConfiguration()
        configuration.arguments = ["/bin"]
        NSWorkspace.shared.openApplication(at: url,
                                           configuration: configuration,
                                           completionHandler: nil)
        

    }
    
    
}

