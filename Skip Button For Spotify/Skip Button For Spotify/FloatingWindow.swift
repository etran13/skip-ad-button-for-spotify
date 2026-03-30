//
//  FloatingWindow.swift
//  Skip Button For Spotify
//
//  Created by Ellie Tran on 3/23/26.
//

import Cocoa
///This is a class for a custom window that is translucent and always on top.
class FloatingWindow: NSWindow {
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        let frame = NSRect(x: 0, y: 0, width: 501, height: 105)
        let contentRect = NSWindow.contentRect(forFrameRect: frame, styleMask: .borderless)
        
        super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag) //Call superclass init
        print(contentRect)
        
        self.backgroundColor = NSColor(calibratedHue: 0.5, saturation: 1.0, brightness: 0, alpha: 0.6) //Set the transparency and background color
        
        self.level = .floating //Sets the always-on-top behavior
        self.ignoresMouseEvents = false
    }

}
