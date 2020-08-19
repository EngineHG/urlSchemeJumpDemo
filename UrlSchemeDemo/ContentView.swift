//
//  ContentView.swift
//  UrlSchemeDemo
//
//  Created by 黄国坚 on 2020/8/10.
//  Copyright © 2020 黄国坚. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let urlSchemes: [String] = ["hailuo://resolve?domain=mianfanqiang123",
                                "hailuo://resolve?domain=OKExGroup_Chinese",
                                "hailuo://resolve?domain=flychatin",
                                "hailuo://proxy?server=103.39.214.69&port=9000&secret=ddd65ebdc80f5a056dc9ea8354cd53b8",
                                "hailuo://authorization?appId=11",
                                "hailuo://pay?appId=321",
                                "hailuo://recharge?appId=231",
                                "hailuo://withdrawal?appId=312312"]
    
    var body: some View {
        VStack {
            List {
                ForEach(self.urlSchemes, id: \.self){
                    JumpBtn(title: $0)
                }
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct JumpBtn: View {
    
    let title: String
    
    var body: some View {
        Button(action: {
            self.jumpScheme(self.title)
        }) {
            Text(title)
        }
    }
    
    private func jumpScheme(_ urlString: String){
        UIApplication.shared.open(URL(string: urlString)!)
    }
}
