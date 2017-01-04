//
//  SECJsonable.swift
//  SwiftyEcharts
//
//  Created by Pluto-Y on 04/01/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

public protocol SECJsonable: CustomStringConvertible {
    
}

public extension SECJsonable {
    public func toJson() -> String {
        return self.description
    }
}

extension Bool: SECJsonable {}
extension Int: SECJsonable {}
extension Int8: SECJsonable {}
extension Int16: SECJsonable {}
extension Int32: SECJsonable {}
extension Int64: SECJsonable {}
extension UInt: SECJsonable {}
extension UInt8: SECJsonable {}
extension UInt16: SECJsonable {}
extension UInt32: SECJsonable {}
extension UInt64: SECJsonable {}
extension Double: SECJsonable {}
extension Float: SECJsonable {}

extension String: SECJsonable {
    public var description: String {
        return "\"\(self)\""
    }
}

extension Optional: SECJsonable {
    public var description: String {
        switch self {
        case .None:
            return "null"
        case let .Some(value):
            if value is SECJsonable {
                return (value as! SECJsonable).toJson()
            } else {
                return "\(value)"
            }
        }
    }
}

extension Array: SECJsonable {
    public func toJson() -> String {
        var jsonStr = "[\n"
        for item in self {
            if let i = item as? SECJsonable {
                jsonStr += "\(i.toJson()),\n"
            } else {
                jsonStr += "\(item),\n"
            }
        }
        jsonStr = jsonStr.substringToIndex(jsonStr.endIndex.predecessor().predecessor())
        jsonStr += "\n]"
        return jsonStr
    }
}

extension Dictionary: SECJsonable {
    public func toJson() -> String {
        var jsonStr = "{\n"
        
        let sortedKeys = Array(self.keys).sort { String($0) < String($1) }

        for key in sortedKeys {
            print("-------------\(key)")
            let value = self[key]!
            if let v = value as? SECJsonable {
                if v is Array {
                    jsonStr += "\"\(key)\":\((v as! Array).toJson()),\n"
                } else if let dic = v as? Dictionary {
                    jsonStr += "\"\(key)\":\(dic.toJson()),\n"
                } else {
                    jsonStr += "\"\(key)\":\(v.toJson()),\n"
                }
            } else {
                jsonStr += "\"\(key)\":\(value),\n"
            }
        }
        
        jsonStr = jsonStr.substringToIndex(jsonStr.endIndex.predecessor().predecessor())
        jsonStr += "\n}"
        return jsonStr
    }
}


