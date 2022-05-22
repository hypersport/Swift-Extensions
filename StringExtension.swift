import Foundation

extension String {
    // 全角字符串转为半角字符串
    public var halfwidthString: String {
        let text:CFMutableString = NSMutableString(string: self) as CFMutableString
        CFStringTransform(text, nil, kCFStringTransformFullwidthHalfwidth, false)
        return text as String
    }
    
    // 半角字符串转为全角字符串
    public var fullwidthString: String {
        let text:CFMutableString = NSMutableString(string: self) as CFMutableString
        CFStringTransform(text, nil, kCFStringTransformFullwidthHalfwidth, true)
        return text as String
    }
    
    /*
     其他类型的字符串转换类似，具体查阅
     https://developer.apple.com/documentation/corefoundation/cfmutablestring/transform_identifiers_for_cfstringtransform
     */
}
