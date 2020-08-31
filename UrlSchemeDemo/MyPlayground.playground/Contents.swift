import UIKit

let payDic: [String : Any] = ["type":"6","orderId":"1297721082296975362","orderNo":"1598235840330","scanType":"6","payAmount":2,"payCoinName":"CNY","id":"1286550423067537410","status":1,"merchantName":"测试支付"]

var payStr: String = ""
payDic.forEach({
    payStr += "&" + $0 + "=" + "\($1)"
})

print(payStr)

if let payData: Data = try? JSONSerialization.data(withJSONObject: payDic){
    let payDataStr = String(data:payData, encoding: String.Encoding.utf8)
    print(payDataStr)
}


let rechargeDic: [String : String] =  ["type":"8","merchantId":"1","appId":"10000","openId":"1297717785318178817","coinName":"CLC","amount":"2","outTradeNo":"eacca1d4c141427b8593c7b61d63fd0e","remark":"halo","accessToken":"eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJvYXV0aF90b2tlbl8xMDAwMHVzZXJpbmZvMTU5ODIzNTE3OTAwNiIsImlhdCI6MTU5ODIzNTE3OX0.uhklGEfEjaVbAK6VxXVSSS9d5jY_-Qy_OupRkksqkA8","notify_url":"http://192.168.11.91:8080?merchantId=1","merchant":"halo"]

var rechargeStr: String = ""
rechargeDic.forEach({
    rechargeStr += "&" + $0 + "=" + $1
})
print(rechargeStr)

