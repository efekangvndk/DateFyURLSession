//
//  HomeScreen.swift
//  Datefy
//
//  Created by Efekan Güvendik on 22.09.2024.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject private var viewModel : HomeScreeenVM
    
    init(viewModel: HomeScreeenVM = HomeScreeenVM()) {
           _viewModel = StateObject(wrappedValue: viewModel)
       }
    
    var body: some View {
        VStack{
            Spacer().frame(height: 40)
            Text("What’s on \nthe Menu?")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            TextField("Materials On Hand", text: $viewModel.keyWord)
                .padding()
                .font(.title3)
                .foregroundColor(.orange)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.brown, lineWidth: 2)
                )
                .padding(.horizontal,30)
            
            Button(action: {
                viewModel.checkKeyWords()
            }) {
                Text("Submit")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.red, lineWidth: 2)
                    .frame(width:.infinity , height: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.3))
                    )
                
                Text(viewModel.resultFood.isEmpty ? "Henüz bir cevap yok" : viewModel.resultFood)
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .padding()
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 20)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.teal.opacity(0.3).ignoresSafeArea())
    }
}

#Preview {
    HomeScreen()
}
