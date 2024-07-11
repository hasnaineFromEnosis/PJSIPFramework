//
//  PJSIPLibrary.swift
//
//
//  Created by Shahwat Hasnaine on 7/11/24.
//

import Foundation

//func x() {
//    
//}

public protocol PJSIPLibraryDelegate: AnyObject {
    func incomingCallReceived(callId: String?)
    
    func acccountUpdateReceived(status: Bool)
    
    func callStatusRecieved(status: Int)
}

public class PJSIPLibrary {
    
    public init() {
        // Create Lib
        CPPWrapper().createLibWrapper()
        
        // Listen incoming call via function pointer
//        CPPWrapper().incoming_call_wrapper(incoming_call_swift)
//        
//        // Listen incoming call via function pointer
//        CPPWrapper().acc_listener_wrapper({ (status: Bool) -> Void in
//            self.delegate?.acccountUpdateReceived(status: status)
//        })
//        
//        // Listen incoming & outgoing call status
//        CPPWrapper().call_listener_wrapper({ (call_answer_code: Int32) -> Void in
//            self.delegate?.callStatusRecieved(status: Int(call_answer_code))
//        })
    }
    
    // Delegate property
    public weak var delegate: PJSIPLibraryDelegate?
    
    func answerCall() {
        CPPWrapper().answerCall()
    }
    
    func hangupCall() {
        CPPWrapper().hangupCall()
    }
    
    func holdCall() {
        CPPWrapper().holdCall()
    }
    
    func unholdCall() {
        CPPWrapper().unholdCall()
    }
    
    func getIncomingCallId() -> String {
       return CPPWrapper().incomingCallInfoWrapper()
    }
    
    func call(uri: String) {
        CPPWrapper().outgoingCall(uri)
    }
    
    func login(username: String, password: String, domain: String, port: String = "5060") {
        CPPWrapper().createAccountWrapper(username, password, domain, port);
    }
    
    func logout() {
        CPPWrapper().unregisterAccountWrapper()
    }
    
    func incoming_call_swift() {
        
    }
}
