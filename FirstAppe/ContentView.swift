//
//  ContentView.swift
//  FirstAppe
//
//  Created by ZHJY on 2025/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /// 垂直布局，默认交叉轴居中对齐
        VStack{
            Text("Hello world")
            Text("Hello world、Hello world、Hello world")
            Text("Hello world、Hello world")
        }
        /// 修改 VStack 对齐交叉轴模式，尾部对齐
        VStack(alignment: .trailing){
            Text("Hello world")
            Text("Hello world、Hello world、Hello world")
            Text("Hello world、Hello world")
        }
        /// 修改 VStack 对齐交叉轴模式，头不对齐
        VStack(alignment: .leading) {
            Text("Hello world")
            Text("Hello world、Hello world、Hello world")
            Text("Hello world、Hello world")
        }
        
        /// 水平布局，默认交叉轴局中对齐
        HStack{
            Rectangle().frame(
                width: 40,
                height: 60
            )
            Rectangle().frame(
                width: 40,
                height: 70
            )
            Rectangle().frame(
                width: 40,
                height: 80
            )
        }
        /// 水平布局，默认交叉轴头部对齐
        HStack(alignment: .top){
            Rectangle().frame(
                width: 40,
                height: 60
            )
            Rectangle().frame(
                width: 40,
                height: 70
            )
            Rectangle().frame(
                width: 40,
                height: 80
            )
        }
        /// 水平布局，默认交叉轴底部对齐
        HStack(alignment: .bottom){
            Rectangle().frame(
                width: 40,
                height: 60
            )
            Rectangle().frame(
                width: 40,
                height: 70
            )
            Rectangle().frame(
                width: 40,
                height: 80
            )
        }
        
        
        /// 叠加布局，默认是居中对齐
        ZStack{
            Rectangle().frame(
                width: 40,
                height: 80
            ).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Rectangle().frame(
                width: 40,
                height: 70
            ).foregroundColor(.red)
            Rectangle().frame(
                width: 40,
                height: 60
            ).foregroundColor(.yellow)
        }
        ZStack(alignment: .bottom){
            Rectangle().frame(
                width: 40,
                height: 80
            ).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Rectangle().frame(
                width: 40,
                height: 70
            ).foregroundColor(.red)
            Rectangle().frame(
                width: 40,
                height: 60
            ).foregroundColor(.yellow)
        }
        ZStack(alignment: .top){
            Rectangle().frame(
                width: 40,
                height: 80
            ).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Rectangle().frame(
                width: 40,
                height: 70
            ).foregroundColor(.red)
            Rectangle().frame(
                width: 40,
                height: 60
            ).foregroundColor(.yellow)
        }
    }
}

#Preview {
    ContentView()
}
