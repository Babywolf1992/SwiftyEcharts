//
//  MarkPointSpec.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 26/07/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import Quick
import Nimble
@testable import SwiftyEcharts

class MarkPointSpec: QuickSpec {
    override func spec() {
        describe("For MarkPoint") {
            let symbolOriginValue = Symbol.emptyCircle
            let symbolValue = OneOrMore(one: symbolOriginValue)
            let symbolSizeValue = FunctionOrFloatOrPair(integerLiteral: 285)
            let symbolRotateValue: Float = 743.2
            let symbolOffsetValue: Point = [100, 200%]
            let silentValue = false
            let labelValue = FormattedLabel(
                .emphasis(FormattedLabelStyle(
                    .show(false),
                    .textStyle(TextStyle(
                        .color(Color.yellow),
                        .fontStyle(FontStyle.oblique),
                        .fontWeight(FontWeight.normal)
                        ))
                    ))
            )
            let itemStyleValue = ItemStyle(
                .normal(CommonItemStyleContent(
                    .barBorderRadius(285.2356),
                    .areaColor(Color.hexColor("#573923"))
                    ))
            )
            let dataValue: [Jsonable] = [
                "string",
                false,
                285.2,
                0,
                "string2"
            ]
            let animationValue = false
            let animationThresholdValue: Float = 75.2732
            let animationDurationValue = Time.number(56384)
            let animationEasingValue = EasingFunction.backInOut
            let animationDelayValue: Time = 3752
            let animationDurationUpdateValue: Time = 66666
            let animationEasingUpdateValue = EasingFunction.quarticOut
            let animationDelayUpdateValue = Time.number(-19274)
            
            let markPoint = MarkPoint()
            markPoint.symbol = symbolValue
            markPoint.symbolSize = symbolSizeValue
            markPoint.symbolRotate = symbolRotateValue
            markPoint.symbolOffset = symbolOffsetValue
            markPoint.silent = silentValue
            markPoint.label = labelValue
            markPoint.itemStyle = itemStyleValue
            markPoint.data = dataValue
            markPoint.animation = animationValue
            markPoint.animationThreshold = animationThresholdValue
            markPoint.animationDuration = animationDurationValue
            markPoint.animationEasing = animationEasingValue
            markPoint.animationDelay = animationDelayValue
            markPoint.animationDurationUpdate = animationDurationUpdateValue
            markPoint.animationEasingUpdate = animationEasingUpdateValue
            markPoint.animationDelayUpdate = animationDelayUpdateValue
            
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "symbol": symbolValue,
                    "symbolSize": symbolSizeValue,
                    "symbolRotate": symbolRotateValue,
                    "symbolOffset": symbolOffsetValue,
                    "silent": silentValue,
                    "label": labelValue,
                    "itemStyle": itemStyleValue,
                    "data": dataValue,
                    "animation": animationValue,
                    "animationThreshold": animationThresholdValue,
                    "animationDuration": animationDurationValue,
                    "animationEasing": animationEasingValue,
                    "animationDelay": animationDelayValue,
                    "animationDurationUpdate": animationDurationUpdateValue,
                    "animationEasingUpdate": animationEasingUpdateValue,
                    "animationDelayUpdate": animationDelayUpdateValue
                ]
                
                expect(markPoint.jsonString).to(equal(resultDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let markPointByEnums = MarkPoint(
                    .symbol(symbolOriginValue),
                    .symbolSize(symbolSizeValue),
                    .symbolRotate(symbolRotateValue),
                    .symbolOffset(symbolOffsetValue),
                    .silent(silentValue),
                    .label(labelValue),
                    .itemStyle(itemStyleValue),
                    .data(dataValue),
                    .animation(animationValue),
                    .animationThreshold(animationThresholdValue),
                    .animationDuration(animationDurationValue),
                    .animationEasing(animationEasingValue),
                    .animationDelay(animationDelayValue),
                    .animationDurationUpdate(animationDurationUpdateValue),
                    .animationEasingUpdate(animationEasingUpdateValue),
                    .animationDelayUpdate(animationDelayUpdateValue)
                )
                
                expect(markPointByEnums.jsonString).to(equal(markPoint.jsonString))
            }
        }
    }
}