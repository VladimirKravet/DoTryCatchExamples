//
//  DoTryCatchManager.swift
//  DoTryCatchExamples
//
//  Created by Vladimir Kravets on 02.11.2023.
//

import Foundation

class DoTryCatchManager {
    
    let isActive: Bool = false
    static let instance = DoTryCatchManager()
    
    func getTitle() -> (title: String?, error: Error?) {
        if isActive{
            return ("New Text!", nil)
        } else {
            return (nil, URLError(.badURL))
        }
    }
    
    func getTitle2() -> Result<String, Error> {
        if isActive{
            return.success("New Text!")
        } else {
            return.failure(URLError(.appTransportSecurityRequiresSecureConnection))
        }
        
    }
    func getTitle3() throws -> String {
        if isActive {
            return "New Text!"
        } else {
            throw URLError(.badServerResponse)
        }
    }
}
