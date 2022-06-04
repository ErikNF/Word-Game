//
//  ContentView.swift
//  Worlds Game
//
//  Created by Эрик Нагаев on 12.05.2022.
//

import SwiftUI

struct StartView: View {
    
    @State var bigWord = ""
    @State var player1 = ""
    @State var player2 = ""
    
    @State var isShoweGame = false
    @State var isAlertPresented = false
    var body: some View {
        
    VStack {
        TitelText(text: "WordsGame")
        
        WordTextField(word: $bigWord, placeholder: "Введите длинное слов")
            .padding(20)
            .padding(.top, 32)
        WordTextField(word: $player1, placeholder: "Игрок 1")
            .cornerRadius(16)
            .padding(.horizontal, 20)
            .padding(.top, 32)
        WordTextField(word: $player2, placeholder: "Игрок 2")
            .cornerRadius(16)
            .padding(.horizontal, 20)
        Button {
            if bigWord.count > 7 {
                isShoweGame.toggle()
            } else {
                self.isAlertPresented.toggle()
            }
            
        } label: {
            Text("Старт")
                .font(.custom("Times New Roman", size: 38))
                .foregroundColor(.red)
                .padding(.horizontal, 56)
                .padding()
                .background(Color("White"))
                .cornerRadius(55)
                .padding(.top)
        }
    }.background(Image("background"))
            .alert("Длинное слово слишком короткое!", isPresented: $isAlertPresented, actions: {
                Text("OK")
            })
            .fullScreenCover(isPresented: $isShoweGame) {
                
                
                let name1 = player1 == "" ? "Игорок 1": player1
                let name2 = player2 == "" ? "Игорок 2": player2
                
                let player1 = Player(name: name1)
                let player2 = Player(name: name2)
                
                let gameViewModel = GameViewModel(player1: player1, player2: player2, word: bigWord)
                GameView(viewModel: gameViewModel)
                }
            }
     }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
 }

