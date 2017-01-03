//
//  SECBorderable.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 03/01/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import Foundation

public protocol SECBorderable {
    var borderColor: SECColor? { get set }
    var borderWidth: Float  { get set }
}
