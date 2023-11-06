//
//  ContentView.swift
//  DoTryCatchExamples
//
//  Created by Vladimir Kravets on 02.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = DoTryCatchViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.text)
                .frame(width: 300, height: 300)
                .background(.blue)
                .onTapGesture {
                    viewModel.fetchTitle()
                }
        }
        .padding()
    }
}

