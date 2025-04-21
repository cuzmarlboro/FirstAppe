//
//  ButtonDemo.swift
//  FirstAppe
//
//  Created by ZHJY on 2025/4/21.
//

import SwiftUI

// MARK: - 自定义胶囊按钮样式
/// 1. 定义一个符合 `ButtonStyle` 协议的自定义按钮样式
/// - 优势：可复用、统一视觉风格、支持按压状态反馈
struct CapsuleButtonStyle: ButtonStyle {
    
    /// 必须实现的方法：将按钮配置转换为具体视图
    /// - Parameter configuration: 提供按钮状态信息（如是否被按压）
    func makeBody(configuration: Configuration) -> some View {
        configuration.label  // 2. 获取按钮的原始标签内容（即Text/Image等）
            .padding()       // 3. 添加内边距（默认值：16pt horizontal, 8pt vertical）
            .background(
                // 4. 动态背景色：按压时透明度降低50%（视觉反馈）
                Color.blue.opacity(configuration.isPressed ? 0.5 : 1)
            )
            .foregroundColor(.white) // 5. 固定文字颜色
            .clipShape(Capsule())    // 6. 裁剪为胶囊形状（自动适应内容高度）
            /* 📌 注：
               - Capsule() 类似于 RoundedRectangle(cornerRadius: .infinity)
               - 比固定 cornerRadius 更能适应不同内容尺寸
            */
    }
}

struct ButtonDemo: View {
    @State var text: String = "Hello, World!"
    var body: some View {
        Text(text)
        VStack(spacing:10){
            // 第一种创建按钮方法
            Button("Tap Me", action: {
                text = "World, Hello!"
            })
            // 第二种创建按钮方法
            Button(action: {
                text = "World, Hello!"
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color
                            .blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            // 形状按钮
            Button(action: {
                text = "World, Hello!"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            
            // MARK: - 按钮样式复用
            Button("Styled Button") { text = "Styled" }
                .buttonStyle(CapsuleButtonStyle()
            )
            
            // MARK: - 动画按钮
            Button {
                withAnimation {
                    text = "Animated!"
                }
            } label: {
                Text(text)
                    .transition(.scale) // 添加过渡效果
            }
            
        }
    }
}

#Preview {
    ButtonDemo()
}
