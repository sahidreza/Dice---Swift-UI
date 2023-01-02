//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Sahid Reza on 02/01/23.
//

import SwiftUI

struct ContentView: View {
    
  @State  var leftDiceNumber = 1
  @State  var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("newbackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo").padding(20)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button("Roll") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }.frame(width: 200,height: 50,alignment: .center)
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .padding()
                    
                
               
            }
               
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n:Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
