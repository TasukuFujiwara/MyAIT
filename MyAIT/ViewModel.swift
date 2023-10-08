//
//  ViewModel.swift
//  MyAIT
//
//  Created by 藤原輔 on 2023/10/08.
//

import Foundation

class ViewModel: ObservableObject {
    static var inputText: String = ""
    
    func onSendButtonClicked(inputtedText: String) {
        Self.inputText = inputtedText
        print(Self.inputText)
    }
}
