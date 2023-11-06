//
//  DoTryCatchViewModel.swift
//  DoTryCatchExamples
//
//  Created by Vladimir Kravets on 02.11.2023.
//

import Foundation

class DoTryCatchViewModel: ObservableObject {
    
    @Published var text: String = "Starting text"
    let manager = DoTryCatchManager.instance
    
    func fetchTitle() {
//        let returnValue = manager.getTitle()
//        if let newTitle = returnValue.title {
//            self.text = newTitle
//        } else if let error = returnValue.error {
//            self.text = error.localizedDescription
//        }
        
//        let result = manager.getTitle2()
//        switch result {
//        case .success(let newTitle):
//            self.text = newTitle
//        case .failure(let error):
//            self.text = error.localizedDescription
//        }
        

        do {
            let newTitle = try manager.getTitle3()
            self.text = newTitle
        } catch let error {
            self.text = error.localizedDescription
        }
    }
}
