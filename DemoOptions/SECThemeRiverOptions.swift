//
//  SECThemeRiverOptions.swift
//  SwiftyEcharts
//
//  Created by Pluto-Y on 16/01/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import SwiftyEcharts

public struct SECThemeRiverOptions {
    
    // MARK: 主题河流图
    /// 地址: http://echarts.baidu.com/demo.html#themeRiver-basic
    static func themeRiverBasicOption() -> Option {
        return Option(
            .tooltip(Tooltip(
                .trigger(.axis),
                .axisPointer(Tooltip.AxisPointer(
                    .type(.line),
                    .lineStyle(LineStyle(
                        .color(.rgba(0, 0, 0, 0.2)),
                        .width(1),
                        .type(.solid)
                        ))
                    ))
                )),
            .legend(Legend(
                .data(["DQ", "TY", "SS", "QG", "SY", "DD"])
                )),
            .singleAxis(SECSingleAxis(
                .axisTick(SECAxisTick()),
                .axisLabel(SECAxisLabel()),
                .type(.time),
                .splitLine(SECSplitLine(
                    .show(true),
                    .lineStyle(LineStyle(
                        .type(.dashed),
                        .opacity(0.2)
                        ))
                    ))
                )),
            .series([
                SECThemeRiverSerie(
                    .itemStyle(ItemStyle(
                        .emphasis(CommonItemStyleContent(
                            .shadowBlur(20),
                            .shadowColor(.rgba(0, 0, 0, 0.8))
                            ))
                        )),
                    .data([["2015/11/08",10,"DQ"],["2015/11/09",15,"DQ"],["2015/11/10",35,"DQ"],
                        // ["2015/11/11",38,"DQ"],["2015/11/12",22,"DQ"],["2015/11/13",16,"DQ"],
                        ["2015/11/14",7,"DQ"],["2015/11/15",2,"DQ"],["2015/11/16",17,"DQ"],
                        ["2015/11/17",33,"DQ"],["2015/11/18",40,"DQ"],["2015/11/19",32,"DQ"],
                        ["2015/11/20",26,"DQ"],["2015/11/21",35,"DQ"],["2015/11/22",40,"DQ"],
                        ["2015/11/23",32,"DQ"],["2015/11/24",26,"DQ"],["2015/11/25",22,"DQ"],
                        // ["2015/11/26",16,"DQ"],["2015/11/27",22,"DQ"],["2015/11/28",10,"DQ"],
                        ["2015/11/08",35,"TY"],["2015/11/09",36,"TY"],["2015/11/10",37,"TY"],
                        ["2015/11/11",22,"TY"],["2015/11/12",24,"TY"],["2015/11/13",26,"TY"],
                        ["2015/11/14",34,"TY"],["2015/11/15",21,"TY"],["2015/11/16",18,"TY"],
                        ["2015/11/17",45,"TY"],["2015/11/18",32,"TY"],["2015/11/19",35,"TY"],
                        ["2015/11/20",30,"TY"],["2015/11/21",28,"TY"],["2015/11/22",27,"TY"],
                        ["2015/11/23",26,"TY"],["2015/11/24",15,"TY"],["2015/11/25",30,"TY"],
                        ["2015/11/26",35,"TY"],["2015/11/27",42,"TY"],["2015/11/28",42,"TY"],
                        ["2015/11/08",21,"SS"],["2015/11/09",25,"SS"],["2015/11/10",27,"SS"],
                        ["2015/11/11",23,"SS"],["2015/11/12",24,"SS"],["2015/11/13",21,"SS"],
                        ["2015/11/14",35,"SS"],["2015/11/15",39,"SS"],["2015/11/16",40,"SS"],
                        ["2015/11/17",36,"SS"],["2015/11/18",33,"SS"],["2015/11/19",43,"SS"],
                        ["2015/11/20",40,"SS"],["2015/11/21",34,"SS"],["2015/11/22",28,"SS"],
                        // ["2015/11/23",26,"SS"],["2015/11/24",37,"SS"],["2015/11/25",41,"SS"],
                        // ["2015/11/26",46,"SS"],["2015/11/27",47,"SS"],["2015/11/28",41,"SS"],
                        // ["2015/11/08",10,"QG"],["2015/11/09",15,"QG"],["2015/11/10",35,"QG"],
                        // ["2015/11/11",38,"QG"],["2015/11/12",22,"QG"],["2015/11/13",16,"QG"],
                        ["2015/11/14",7,"QG"],["2015/11/15",2,"QG"],["2015/11/16",17,"QG"],
                        ["2015/11/17",33,"QG"],["2015/11/18",40,"QG"],["2015/11/19",32,"QG"],
                        ["2015/11/20",26,"QG"],["2015/11/21",35,"QG"],["2015/11/22",40,"QG"],
                        ["2015/11/23",32,"QG"],["2015/11/24",26,"QG"],["2015/11/25",22,"QG"],
                        ["2015/11/26",16,"QG"],["2015/11/27",22,"QG"],["2015/11/28",10,"QG"],
                        ["2015/11/08",10,"SY"],["2015/11/09",15,"SY"],["2015/11/10",35,"SY"],
                        ["2015/11/11",38,"SY"],["2015/11/12",22,"SY"],["2015/11/13",16,"SY"],
                        ["2015/11/14",7,"SY"],["2015/11/15",2,"SY"],["2015/11/16",17,"SY"],
                        ["2015/11/17",33,"SY"],["2015/11/18",40,"SY"],["2015/11/19",32,"SY"],
                        ["2015/11/20",26,"SY"],["2015/11/21",35,"SY"],["2015/11/22",4,"SY"],
                        ["2015/11/23",32,"SY"],["2015/11/24",26,"SY"],["2015/11/25",22,"SY"],
                        ["2015/11/26",16,"SY"],["2015/11/27",22,"SY"],["2015/11/28",10,"SY"],
                        ["2015/11/08",10,"DD"],["2015/11/09",15,"DD"],["2015/11/10",35,"DD"],
                        ["2015/11/11",38,"DD"],["2015/11/12",22,"DD"],["2015/11/13",16,"DD"],
                        ["2015/11/14",7,"DD"],["2015/11/15",2,"DD"],["2015/11/16",17,"DD"],
                        ["2015/11/17",33,"DD"],["2015/11/18",4,"DD"],["2015/11/19",32,"DD"],
                        ["2015/11/20",26,"DD"],["2015/11/21",35,"DD"],["2015/11/22",40,"DD"],
                        ["2015/11/23",32,"DD"],["2015/11/24",26,"DD"],["2015/11/25",22,"DD"],
                        ["2015/11/26",16,"DD"],["2015/11/27",22,"DD"],["2015/11/28",10,"DD"]])
                )
                ])
        )
    }
    
    // MARK: ThemeRiver Lastfm
    /// 地址: http://echarts.baidu.com/demo.html#themeRiver-lastfm
    static func themeRiverLastfmOption() -> Option {
        let rawData = [
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [0, 49, 67, 16, 0, 19, 19, 0, 0, 1, 10, 5, 6, 1, 1, 0, 25, 0, 0, 0],
            [0, 6, 3, 34, 0, 16, 1, 0, 0, 1, 6, 0, 1, 56, 0, 2, 0, 2, 0, 0],
            [0, 8, 13, 15, 0, 12, 23, 0, 0, 1, 0, 1, 0, 0, 6, 0, 0, 1, 0, 1],
            [0, 9, 28, 0, 91, 6, 1, 0, 0, 0, 7, 18, 0, 9, 16, 0, 1, 0, 0, 0],
            [0, 3, 42, 36, 21, 0, 1, 0, 0, 0, 0, 16, 30, 1, 4, 62, 55, 1, 0, 0],
            [0, 7, 13, 12, 64, 5, 0, 0, 0, 8, 17, 3, 72, 1, 1, 53, 1, 0, 0, 0],
            [1, 14, 13, 7, 8, 8, 7, 0, 1, 1, 14, 6, 44, 8, 7, 17, 21, 1, 0, 0],
            [0, 6, 14, 2, 14, 1, 0, 0, 0, 0, 2, 2, 7, 15, 6, 3, 0, 0, 0, 0],
            [0, 9, 11, 3, 0, 8, 0, 0, 14, 2, 0, 1, 1, 1, 7, 13, 2, 1, 0, 0],
            [0, 7, 5, 10, 8, 21, 0, 0, 130, 1, 2, 18, 6, 1, 5, 1, 4, 1, 0, 7],
            [0, 2, 15, 1, 5, 5, 0, 0, 6, 0, 0, 0, 4, 1, 3, 1, 17, 0, 0, 9],
            [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            [6, 27, 26, 1, 0, 11, 1, 0, 0, 0, 1, 1, 2, 0, 0, 9, 1, 0, 0, 0],
            [31, 81, 11, 6, 11, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 3, 14, 0, 0, 12],
            [19, 53, 6, 20, 0, 4, 37, 0, 30, 86, 43, 7, 5, 7, 17, 19, 2, 0, 0, 5],
            [0, 22, 14, 6, 10, 24, 18, 0, 13, 21, 5, 2, 13, 35, 7, 1, 8, 0, 0, 1],
            [0, 56, 5, 0, 0, 0, 0, 0, 7, 24, 0, 17, 7, 0, 0, 3, 0, 0, 0, 8],
            [18, 29, 3, 6, 11, 0, 15, 0, 12, 42, 37, 0, 3, 3, 13, 8, 0, 0, 0, 1],
            [32, 39, 37, 3, 33, 21, 6, 0, 4, 17, 0, 11, 8, 2, 3, 0, 23, 0, 0, 17],
            [72, 15, 28, 0, 0, 0, 0, 0, 1, 3, 0, 35, 0, 9, 17, 1, 9, 1, 0, 8],
            [11, 15, 4, 2, 0, 18, 10, 0, 20, 3, 0, 0, 2, 0, 0, 2, 2, 30, 0, 0],
            [14, 29, 19, 3, 2, 17, 13, 0, 7, 12, 2, 0, 6, 0, 0, 1, 1, 34, 0, 1],
            [1, 1, 7, 6, 1, 1, 15, 1, 1, 2, 1, 3, 1, 1, 9, 1, 1, 25, 1, 72]
        ]
        let labels = [
            "The Sea and Cake",
            "Andrew Bird",
            "Laura Veirs",
            "Brian Eno",
            "Christopher Willits",
            "Wilco",
            "Edgar Meyer",
            "Bxc3xa9la Fleck",
            "Fleet Foxes",
            "Kings of Convenience",
            "Brett Dennen",
            "Psapp",
            "The Bad Plus",
            "Feist",
            "Battles",
            "Avishai Cohen",
            "Rachael Yamagata",
            "Norah Jones",
            "Bxc3xa9la Fleck and the Flecktones",
            "Joshua Redman"
        ]
        var data: [Jsonable] = []
        for i in 0..<rawData.count {
            for j in 0..<rawData[i].count {
                var l: String = "null"
                if i < labels.count {
                    l = labels[i]
                }
                let d: [Jsonable] = [j, rawData[i][j], l]
                data.append(d)
            }
        }
        return Option(
            .singleAxis(SECSingleAxis(
                .max("dataMax")
                )),
            .series([
                SECThemeRiverSerie(
                    .data(data),
                    .label(FormattedLabel(
                        .normal(FormattedLabelStyle(
                            .show(false)
                            ))
                        ))
                )
                ])
        )
    }
}
