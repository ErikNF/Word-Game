//
//  TitelText.swift
//  Worlds Game
//
//  Created by Эрик Нагаев on 12.05.2022.
//

import SwiftUI

struct TitelText: View {
   
    @State var text: String
    
    var body: some View {
        Text(text)
            .padding(20)
            .font(.custom("Times New Roman", size: 46))
            .cornerRadius(16)
            .frame(maxWidth: .infinity)
            .background(Color("FirstPlayer"))
            .foregroundColor(.white)
    }
}

struct TitelText_Previews: PreviewProvider {
    static var previews: some View {
        TitelText(text: "Магнитотерапия")
    }
}
