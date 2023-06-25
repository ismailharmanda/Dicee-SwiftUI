//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by ismail harmanda on 25.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding()
                Spacer()
                Button(action: {
                    print("on press")
                }) {
                    Text("Roll")
                        .font(.system(size: 50,weight: .heavy))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            .padding(.bottom)
        }
        
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


