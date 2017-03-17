//
//  SECGraphicStyle.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 11/02/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

/// 通用 `Graphic` 的样式接口
public protocol SECGraphicStyle: Shadowable {
    /// 填充色。
    var fill: Color? { get set }
    /// 笔画颜色。
    var stroke: Color? { get set }
    /// 笔画宽度。
    var lineWidth: Float? { get set }
}

/// 通用的 `Graphic` 的样式实现
public struct SECCommonGraphicStyle: SECGraphicStyle {
    /// MARK: SECGraphicStyle
    public var fill: Color?
    public var stroke: Color?
    public var lineWidth: Float?
    public var shadowBlur: Float?
    public var shadowOffsetX: Float?
    public var shadowOffsetY: Float?
    public var shadowColor: Color?
    
    public init() {}
}

extension SECCommonGraphicStyle: Enumable {
    public enum Enums {
        case fill(Color), stroke(Color), lineWidth(Float), shadowBlur(Float), shadowOffsetX(Float), shadowOffsetY(Float), shadowColor(Color)
    }
    
    public typealias ContentEnum = Enums
    
    public init(_ elements: Enums...) {
        for ele in elements {
            switch ele {
            case let .fill(fill):
                self.fill = fill
            case let .stroke(stroke):
                self.stroke = stroke
            case let .lineWidth(lineWidth):
                self.lineWidth = lineWidth
            case let .shadowBlur(shadowBlur):
                self.shadowBlur = shadowBlur
            case let .shadowOffsetX(shadowOffsetX):
                self.shadowOffsetX = shadowOffsetX
            case let .shadowOffsetY(shadowOffsetY):
                self.shadowOffsetY = shadowOffsetY
            case let .shadowColor(shadowColor):
                self.shadowColor = shadowColor
            }
        }
    }
}

extension SECCommonGraphicStyle: Mappable {
    public func mapping(map: Mapper) {
        map["fill"] = fill
        map["stroke"] = stroke
        map["lineWidth"] = lineWidth
        map["shadowBlur"] = shadowBlur
        map["shadowOffsetX"] = shadowOffsetX
        map["shadowOffsetY"] = shadowOffsetY
        map["shadowColor"] = shadowColor
    }
}
