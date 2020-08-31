//
//  String-Extension.swift
//  UrlSchemeDemo
//
//  Created by 黄国坚 on 2020/8/24.
//  Copyright © 2020 黄国坚. All rights reserved.
//

import Foundation

//MARK: - base64 加解密
public extension String{
    
    // base64编码
    public func toBase64() -> String? {
        if let data = self.data(using: .utf8) {
            return data.base64EncodedString()
        }
        return nil
    }
    
    // base64解码
    public func fromBase64() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
}
