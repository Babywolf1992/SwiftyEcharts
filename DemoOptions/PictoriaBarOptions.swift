//
//  PictoriaBarOptions.swift
//  SwiftyEcharts
//
//  Created by Pluto-Y on 16/01/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import SwiftyEcharts

public struct PictoriaBarOptions {
    
    // MARK: 圣诞节儿童愿望清单和山峰高度
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-hill
    static func pictorialBarHillOption() -> Option {
        let paperDataURI = "data:image/png;base64,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"
        return Option(
            .backgroundColor("#0f375f"),
            .tooltip(Tooltip()),
            .legend(Legend(
                .data(["all"]),
                .textStyle(TextStyle(
                    .color("#ddd")
                    ))
                )),
            .xAxis(Axis(
                .data(["圣诞节儿童愿望清单", "", "珠穆朗玛\nQomolangma", "乞力马扎罗\nKilimanjaro"]),
                .axisTick(AxisTick(.show(false))),
                .axisLine(AxisLine(.show(false))),
                .axisLabel(AxisLabel(
                    .margin(20),
                    .textStyle(TextStyle(
                        .color("#ddd"),
                        .fontSize(14)
                        ))
                    ))
                )),
            .yAxis(Axis(
                .splitLine(SplitLine(.show(false))),
                .axisTick(AxisTick(.show(false))),
                .axisLine(AxisLine(.show(false))),
                .axisLabel(AxisLabel(.show(false)))
                )),
            .animationEasing(.elasticOut),
            .series([
                PictorialBarSerie(
                    .name("all"),
                    .hoverAnimation(true),
                    .label(FormattedLabel(
                        .normal(FormattedLabelStyle(
                            .show(true),
                            .position(.top),
                            .formatter(.string("{c} m")),
                            .textStyle(TextStyle(
                                .fontSize(16),
                                .color(.hexColor("#e54035"))
                                ))
                            ))
                        )),
                    .data([
                        PictorialBarSerie.Data(
                            .value(13000),
                            .symbol(.path("image://\(paperDataURI)")),
                            .symbolRepeat("true"),
//                            .symbolSize()
                            .symbolOffset([0, 10]),
                            .symbolMargin("-30%"),
                            .animationDelay("function (dataIndex, params) {return params.index * 30;}")
                        ),
                        PictorialBarSerie.Data(
                            .value("-"),
                            .symbol(.none)
                        ),
                        PictorialBarSerie.Data(
                            .value(8844),
                            .symbol(.path("image://http://echarts.baidu.com/data/asset/img/hill-Qomolangma.png")),
//                            .symbolSize(["200%", "105"]),
                            .symbolPosition(.end),
                            .z(10)
                        ),
                        PictorialBarSerie.Data(
                            .value(5895),
                            .symbol(.path("image://http://echarts.baidu.com/data/asset/img/hill-Kilimanjaro.png")),
//                            .symbolSize([200%, 105%]),
                            .symbolPosition(.end)
                        )
                        ]),
                    .markLine(MarkLine(
                        .symbol(.none),
                        .label(Label(.normal(CommonLabelStyle(.show(false))))),
                        .lineStyle(EmphasisLineStyle(
                            .normal(LineStyle(
                                .color(.hexColor("#e54035")),
                                .width(2)
                                ))
                            )),
                        .data([
                            MarkLine.Data(
                                .yAxis("8844")
                            )
                            ])
                        ))
                )
                ])
        )
    }
    
    // MARK: 驯鹿的速度
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-velocity
    static func pictorialBarVelocityOption() -> Option {
        // TODO: 添加实现
        return Option(
        )
    }
    
    // MARK: 交通工具
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-vehicle
    static func pictorialBarVehicleOption() -> Option {
        // TODO: 添加实现
        return Option(
        )
    }
    
    // MARK: 精灵
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-spirit
    static func pictorialBarSpiritOption() -> Option {
        // TODO: 添加实现
        return Option(
        )
    }
    
    // MARK: 人体含水量
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-body-fill
    static func pictorialBarBodyFillOption() -> Option {
        // TODO: 添加实现
        return Option(
        )
    }
    
    // MARK: 虚线柱状图效果
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-dotted
    static func pictorialBarDottedOption() -> Option {
        // TODO: 添加实现
        return Option(
        )
    }
    
    // MARK: 森林的增长
    /// 地址: http://echarts.baidu.com/demo.html#pictorialBar-forest
    static func pictorialBarForestOption() -> Option {
        // TODO: 添加实现
        return Option(
        )
    }

}
