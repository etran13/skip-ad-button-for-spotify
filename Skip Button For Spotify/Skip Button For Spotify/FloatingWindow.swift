//
//  FloatingWindow.swift
//  Skip Button For Spotify
//
//  Created by Ellie Tran on 3/23/26.
//

import Cocoa

class FloatingWindow: NSWindow {
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag)
        print("NSWINDOW SUBCLASS ACTIVE")
        self.backgroundColor = NSColor(calibratedHue: 0.5, saturation: 1.0, brightness: 0, alpha: 0.6)
    }

}
