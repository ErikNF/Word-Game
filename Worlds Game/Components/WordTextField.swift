//
//  WordTextField.swift
//  Worlds Game
//
//  Created by Эрик Нагаев on 12.05.2022.
//

import SwiftUI

struct WordTextField: View {
    
    @State var word: Binding<String>
    
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: word)
            .font(.custom("Times New Roman", size: 25))
            .padding(12)
            .background(.white)
            .frame(maxWidth: .infinity)
            .cornerRadius(12)
        
            
    }
    
}

