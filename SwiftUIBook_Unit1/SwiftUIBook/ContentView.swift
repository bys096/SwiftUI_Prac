//
//  ContentView.swift
//  SwiftUIBook
//
//  Created by 반영서 on 2023/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("폰트와 굵기 설정")
                .font(.title)
                .fontWeight(.bold)
            
            Text("글씨색은 foreground, 배경은 background")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo", size: 16))   // 커스텀 폰트 설정
                .bold()                 // 볼드체
                .italic()               // 이탤릭체
                .underline()            // 밑줄
                .strikethrough()        // 취소선
            
            Text("라인 수 제한과\n텍스트 정렬 기능입니다...\n aaa")
                .lineLimit(2)           // 텍스트를 최대 2줄까지만 표현
                .multilineTextAlignment(.trailing)  // 다중행 문자열의 정렬 방식 지정
                .fixedSize()            // 주어진 공간의 크기가 작아도 텍스트를 생략하지 않고 표현되도록 설정
            
            // 2개 이상의 텍스트를 묶어서 함께 적용 가능
            (Text("자간과 기준선").kerning(8)     // 문자 간격
             + Text("  조정도 쉽게 가능합니다.").baselineOffset(8))   // 기준선을 기준으로 위치 조정(아래로부터 8 이동, 음수라면 위에서부터 아래로)
            .font(.system(size: 16))
            
        }
        .padding()
        Text("Hello, world!2")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
