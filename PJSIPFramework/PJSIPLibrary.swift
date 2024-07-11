//
//  PJSIPLibrary.swift
//
//
//  Created by Shahwat Hasnaine on 7/11/24.
//

import Foundation

public protocol PJSIPLibraryDelegate: AnyObject {
    func incomingCallReceived(callId: String)
    
    func acccountUpdateReceived(status: Bool)
    
    func callStatusRecieved(status: Int)
}

public class PJSIPLibrary {
    
    public init() {
        print("Initialized")
//        CPPWrapper().createLibWrapper()
    }
    
    // Delegate property
    public weak var delegate: PJSIPLibraryDelegate?
    
    public func x() {
        print("Hello X")
        delegate?.incomingCallReceived(callId: "OLOPOLO")
    }
    
    public func y() -> String {
        return "Sdasda"
    }
}
