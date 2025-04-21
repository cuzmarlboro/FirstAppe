//
//  BindingDemo.swift
//  FirstAppe
//
//  Created by ZHJY on 2025/4/22.
//

import SwiftUI

struct BindingDemo: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack{
            bgColor.ignoresSafeArea(.all)
            ButtonView(bgColor: $bgColor)
        }
    }
}

struct ButtonView: View {
    @Binding var bgColor: Color
    @State var buttonColor: Color = .blue
    var body: some View {
        Button("Button"){
            bgColor = .orange
            buttonColor = .pink
        }
        .buttonStyle(.borderedProminent)
        .accentColor(buttonColor)
    }
}

#Preview {
    BindingDemo()
}
