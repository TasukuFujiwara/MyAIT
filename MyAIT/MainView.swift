//
//  MainView.swift
//  MyAIT
//
//  Created by 藤原輔 on 2023/10/08.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = ViewModel()
    
    @State private var content: String = ""
    
    var body: some View {
        VStack {
            /* Contents Area */
            Color.cyan
            
            /* Category Area */
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<20, id: \.self) { num in
                        Text("Category\(num)")
                            .padding()
                    }
                }   // HStack
            }   // ScrollView
            
            /* Input Area */
            ZStack {
                Color.gray
                HStack {
                    TextField("", text: $content)
                        .background(Color.white)
                        .padding()
                    Button("send") {
                        viewModel.onSendButtonClicked(inputtedText: content)
                    }
                    .background()
                }   // HStack
                .padding()
            }   // ZStack
            .frame(height: 100)
         
        }   // VStack
        .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
