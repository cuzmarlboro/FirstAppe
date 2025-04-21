//
//  ViewModifierDemo.swift
//  FirstAppe
//
//  Created by ZHJY on 2025/4/21.
//
//  1. 为什么Button设置圆角和Text设置圆角用的Modifier不一样？

import SwiftUI

struct ViewModifierDemo: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(10) // 必须在 background 之前给 padding 才能看到效果
                .background(.black)
                .kerning(5)
                .cornerRadius(10)
            
            Button("Tap Me"){
                
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button("Tap Me"){
                
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ViewModifierDemo()
}
