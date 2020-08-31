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
                                "hailuo://authorization?appId=11&type=0&responseType=2&scope=scope&qrCode=qrCode",
                                #"hailuo://pay?status=1&payAmount=2&payCoinName=CNY&orderNo=1598235840330&scanType=6&merchantName='测试支付'&type=6&orderId=1297721082296975362&id=1286550423067537410"#,
                                "hailuo://recharge?merchantId=1&notify_url=http://192.168.11.91:8080?merchantId=1&type=8&remark=备注哈哈哈哈哈&openId=1297717785318178817&coinName=CLC&accessToken=eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJvYXV0aF90b2tlbl8xMDAwMHVzZXJpbmZvMTU5ODIzNTE3OTAwNiIsImlhdCI6MTU5ODIzNTE3OX0.uhklGEfEjaVbAK6VxXVSSS9d5jY_-Qy_OupRkksqkA8&amount=2&outTradeNo=eacca1d4c141427b8593c7b61d63fd0e&appId=10000&merchant=商家名称啊啊啊啊啊",
                                "hailuo://withdrawal?appId=312312"]
    
    var body: some View {
        VStack {
            List {
                ForEach(self.urlSchemes, id: \.self){
                    JumpBtn(title: $0)
                }
                ForEach(["授权", "支付"], id: \.self){
                    ImgV(imgName: $0)
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
        
        let urlString: String = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL(string: urlString)!)
    }
}

struct ImgV: View {
    
    let imgName: String
    
    var body: some View{
        HStack{
            if #available(iOS 14.0, *) {
                Text(Image(imgName)) + Text(imgName)
            } else {
                Image(imgName)
                Text(imgName)
            }
        }
    }
}
