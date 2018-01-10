
import Foundation

/// 运用下标取子串的拓展
public extension String {
    
    /// 通过下标获取下标对应的字符，并转成String返回
    public subscript(index: Int) -> String {
        
        guard index >= 0 && index < self.count else {
            hz_print(" ⚠️⚠️⚠️ 字符串使用下标越界,将返回空字符串")
            return ""
        }
        let stringIndex = self.index(self.startIndex, offsetBy: index)
        return String(self[stringIndex])
    }
    
    /// 通过下标获取下标对应的字符，并转成String返回(startIndex：从第几个下标开始，length：要取的子串的长度)
    public subscript(startIndex: Int, length: Int) -> String {
        
        guard startIndex >= 0
            && length >= 0
            && startIndex + length <= self.count else {
            hz_print(" ⚠️⚠️⚠️ 字符串使用下标错误,将返回空字符串")
            return ""
        }
        guard length != 0 else {
            return ""
        }
        let strStartIndex = self.index(self.startIndex, offsetBy: startIndex)
        let strEndIndex = self.index(strStartIndex, offsetBy: length-1)
        return String(self[strStartIndex ... strEndIndex])
    }
    
    /// 通过下标传一个元组获取子串,这个元组会当成闭区间去处理
    public subscript(section: (start: Int, end: Int)) -> String {
        
        let startInt = section.0
        let endInt = section.1
        guard startInt >= 0
            && endInt >= startInt
            && endInt < self.count
        else {
                hz_print(" ⚠️⚠️⚠️ 字符串使用元组下标错误,将返回空字符串")
                return ""
        }
        let strStartIndex = self.index(self.startIndex, offsetBy: startInt)
        let strEndIndex = self.index(self.startIndex, offsetBy: endInt)
        return String(self[strStartIndex ... strEndIndex])
    }
    
    
    
}

