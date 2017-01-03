//
//  SECLabelType.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 03/01/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

public protocol SECEmphasisable: CustomStringConvertible {
    associatedtype Style
    var normal: Style? { get  set }
    var emphasis: Style? { get set }
}
