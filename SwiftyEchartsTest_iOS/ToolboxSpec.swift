//
//  ToolboxSpec.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 13/08/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import Quick
import Nimble
@testable import SwiftyEcharts

class ToolboxSpec: QuickSpec {
    override func spec() {
        describe("For Toolbox.Feature.SaveAsImage.Type") {
            let pngString = "png"
            let jpegString = "jpeg"
            
            let pngType = Toolbox.Feature.SaveAsImage.Type.png
            let jpegType = Toolbox.Feature.SaveAsImage.Type.jpeg
            
            it("needs to check the enum case jsonString") {
                expect(pngType.jsonString).to(equal(pngString.jsonString))
                expect(jpegType.jsonString).to(equal(jpegString.jsonString))
            }
        }
        
        let colorIconStyleContentValue = Color.rgba(128, 128, 128, 0.3)
        let borderColorIconStyleContentValue = Color.hexColor("#abcdef")
        let borderWidthIconStyleContentValue: Float = 8.427
        let borderTypeIconStyleContentValue = LineType.solid
        let shadowBlurIconStyleContentValue: Float = 87234.23872
        let shadowColorIconStyleContentValue = Color.array([Color.red, Color.hexColor("#2746ff"), Color.rgba(0, 0, 128, 0.77)])
        let shadowOffsetXIconStyleContentValue: Float = 85.34874
        let shadowOffsetYIconStyleContentValue: Float = 0.88873
        let opacityIconStyleContentValue: Float = 0.74623
        let textPositionIconStyleContentValue = Position.top
        let textAlignIconStyleContentValue = Align.right
        
        let iconStyleContent = Toolbox.IconStyleContent()
        iconStyleContent.color = colorIconStyleContentValue
        iconStyleContent.borderColor = borderColorIconStyleContentValue
        iconStyleContent.borderWidth = borderWidthIconStyleContentValue
        iconStyleContent.borderType = borderTypeIconStyleContentValue
        iconStyleContent.shadowBlur = shadowBlurIconStyleContentValue
        iconStyleContent.shadowColor = shadowColorIconStyleContentValue
        iconStyleContent.shadowOffsetX = shadowOffsetXIconStyleContentValue
        iconStyleContent.shadowOffsetY = shadowOffsetYIconStyleContentValue
        iconStyleContent.opacity = opacityIconStyleContentValue
        iconStyleContent.textPosition = textPositionIconStyleContentValue
        iconStyleContent.textAlign = textAlignIconStyleContentValue
        
        describe("For Toolbox.IconStyleContent") {
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "color": colorIconStyleContentValue,
                    "borderColor": borderColorIconStyleContentValue,
                    "borderWidth": borderWidthIconStyleContentValue,
                    "borderType": borderTypeIconStyleContentValue,
                    "shadowBlur": shadowBlurIconStyleContentValue,
                    "shadowColor": shadowColorIconStyleContentValue,
                    "shadowOffsetX": shadowOffsetXIconStyleContentValue,
                    "shadowOffsetY": shadowOffsetYIconStyleContentValue,
                    "opacity": opacityIconStyleContentValue,
                    "textPosition": textPositionIconStyleContentValue,
                    "textAlign": textAlignIconStyleContentValue
                ]
                
                expect(iconStyleContent.jsonString).to(equal(resultDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let iconStyleContentByEnums = Toolbox.IconStyleContent(
                    .color(colorIconStyleContentValue),
                    .borderColor(borderColorIconStyleContentValue),
                    .borderWidth(borderWidthIconStyleContentValue),
                    .borderType(borderTypeIconStyleContentValue),
                    .shadowBlur(shadowBlurIconStyleContentValue),
                    .shadowColor(shadowColorIconStyleContentValue),
                    .shadowOffsetX(shadowOffsetXIconStyleContentValue),
                    .shadowOffsetY(shadowOffsetYIconStyleContentValue),
                    .opacity(opacityIconStyleContentValue),
                    .textPosition(textPositionIconStyleContentValue),
                    .textAlign(textAlignIconStyleContentValue)
                )
                
                expect(iconStyleContentByEnums.jsonString).to(equal(iconStyleContentByEnums.jsonString))
            }
        }
        
        let normalIconStyleValue = iconStyleContent
        let emphasisIconStyleValue = Toolbox.IconStyleContent(
            .opacity(0.47623),
            .color(Color.yellow),
            .borderWidth(8745.28374),
            .textAlign(Align.left),
            .textPosition(Position.left)
        )
        
        let iconStyle = Toolbox.IconStyle()
        iconStyle.normal = normalIconStyleValue
        iconStyle.emphasis = emphasisIconStyleValue
        
        describe("For IconStyle") { 
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "normal": normalIconStyleValue,
                    "emphasis": emphasisIconStyleValue
                ]
                
                expect(iconStyle.jsonString).to(equal(resultDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let iconStyleByEnums = Toolbox.IconStyle(
                    .normal(normalIconStyleValue),
                    .emphasis(emphasisIconStyleValue)
                )
                
                expect(iconStyleByEnums.jsonString).to(equal(iconStyle.jsonString))
            }
        }
        
        let typeSaveAsImageValue = Toolbox.Feature.SaveAsImage.Type.jpeg
        let nameSaveAsImageValue = "saveAsImageNameValue"
        let backgroundColorSaveAsImageValue = Color.hexColor("#873abc")
        let excludeComponentsSaveAsImageValue: [String] = ["excludeComponent1", "excludeComponent2"]
        let showSaveAsImageValue = false
        let titleSaveAsImageValue = "saveAsImageTitleValue"
        let iconSaveAsImageValue = "saveAsImageIconValue"
        let iconStyleSaveAsImageValue = iconStyle
        let pixelRatioSaveAsImageValue: Float = 2
        
        let saveAsImage = Toolbox.Feature.SaveAsImage()
        saveAsImage.type = typeSaveAsImageValue
        saveAsImage.name = nameSaveAsImageValue
        saveAsImage.backgroundColor = backgroundColorSaveAsImageValue
        saveAsImage.excludeComponents = excludeComponentsSaveAsImageValue
        saveAsImage.show = showSaveAsImageValue
        saveAsImage.title = titleSaveAsImageValue
        saveAsImage.icon = iconSaveAsImageValue
        saveAsImage.iconStyle = iconStyleSaveAsImageValue
        saveAsImage.pixelRatio = pixelRatioSaveAsImageValue
        
        describe("For Toolbox.Feature.SaveAsImage") { 
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "type": typeSaveAsImageValue,
                    "name": nameSaveAsImageValue,
                    "backgroundColor": backgroundColorSaveAsImageValue,
                    "excludeComponents": excludeComponentsSaveAsImageValue,
                    "show": showSaveAsImageValue,
                    "title": titleSaveAsImageValue,
                    "icon": iconSaveAsImageValue,
                    "iconStyle": iconStyleSaveAsImageValue,
                    "pixelRatio": pixelRatioSaveAsImageValue
                ]
                
                expect(saveAsImage.jsonString).to(equal(resultDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let saveAsImageByEnums = Toolbox.Feature.SaveAsImage(
                    .type(typeSaveAsImageValue),
                    .name(nameSaveAsImageValue),
                    .backgroundColor(backgroundColorSaveAsImageValue),
                    .excludeComponents(excludeComponentsSaveAsImageValue),
                    .show(showSaveAsImageValue),
                    .title(titleSaveAsImageValue),
                    .icon(iconSaveAsImageValue),
                    .iconStyle(iconStyleSaveAsImageValue),
                    .pixelRatio(pixelRatioSaveAsImageValue)
                )
                
                expect(saveAsImageByEnums.jsonString).to(equal(saveAsImage.jsonString))
            }
        }
        
        
        let showRestoreValue = false
        let titleRestoreValue = "restoreTitleValue"
        let iconRestoreValue = "restoreIconValue"
        let iconStyleRestoreValue = Toolbox.IconStyle(
            .emphasis(Toolbox.IconStyleContent(
                .color(Color.hexColor("#77fba7")),
                .textPosition(Position.top),
                .shadowBlur(7.2736)
                ))
        )
        
        let restore = Toolbox.Feature.Restore()
        restore.show = showRestoreValue
        restore.title = titleRestoreValue
        restore.icon = iconRestoreValue
        restore.iconStyle = iconStyleRestoreValue
        
        describe("For Toolbox.Feature.Restore") {
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "show": showRestoreValue,
                    "title": titleRestoreValue,
                    "icon": iconRestoreValue,
                    "iconStyle": iconStyleRestoreValue
                ]
                
                expect(restore.jsonString).to(equal(resultDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let restoreByEnums = Toolbox.Feature.Restore(
                    .show(showRestoreValue),
                    .title(titleRestoreValue),
                    .icon(iconRestoreValue),
                    .iconStyle(iconStyleRestoreValue)
                )
                
                expect(restoreByEnums.jsonString).to(equal(restore.jsonString))
            }
        }
        
        let showDataViewValue = true
        let titleDataViewValue = "dataViewTitleValue"
        let iconDataViewValue = "dataViewIconValue"
        let iconStyleDataViewValue = Toolbox.IconStyle(
            .normal(Toolbox.IconStyleContent(
                .borderWidth(0.00001),
                .opacity(0.99999999),
                .shadowOffsetY(100.01),
                .shadowOffsetX(999.0001)
                ))
        )
        let readOnlyDataViewValue = false
        let langDataViewValue: [String] = ["数据视图", "关闭", "刷新"]
        let backgroundColorDataViewValue = Color.array([Color.hexColor("#123abc"), Color.red, rgba(200, 19, 67, 0.888888)])
        let textareaColorDataViewValue = Color.hexColor("#667788")
        let textareaBorderColorDataViewValue = Color.rgb(99, 100, 101)
        let textColorDataViewValue = Color.red
        let buttonColorDataViewValue = Color.auto
        let buttonTextColorDataViewValue = rgba(0, 0, 0, 0)
        
        let dataView = Toolbox.Feature.DataView()
        dataView.show = showDataViewValue
        dataView.title = titleDataViewValue
        dataView.icon = iconDataViewValue
        dataView.iconStyle = iconStyleDataViewValue
        dataView.readOnly = readOnlyDataViewValue
        dataView.lang = langDataViewValue
        dataView.backgroundColor = backgroundColorDataViewValue
        dataView.textareaColor = textareaColorDataViewValue
        dataView.textareaBorderColor = textareaBorderColorDataViewValue
        dataView.textColor = textColorDataViewValue
        dataView.buttonColor = buttonColorDataViewValue
        dataView.buttonTextColor = buttonTextColorDataViewValue
        
        describe("For ToolboxFeature.DataView") {
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "show": showDataViewValue,
                    "title": titleDataViewValue,
                    "icon": iconDataViewValue,
                    "iconStyle": iconStyleDataViewValue,
                    "readOnly": readOnlyDataViewValue,
                    "lang": langDataViewValue,
                    "backgroundColor": backgroundColorDataViewValue,
                    "textareaColor": textareaColorDataViewValue,
                    "textareaBorderColor": textareaBorderColorDataViewValue,
                    "textColor": textColorDataViewValue,
                    "buttonColor": buttonColorDataViewValue,
                    "buttonTextColor": buttonTextColorDataViewValue
                ]
                
                expect(dataView.jsonString).to(equal(resultDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let dataViewByEnums = Toolbox.Feature.DataView(
                    .show(showDataViewValue),
                    .title(titleDataViewValue),
                    .icon(iconDataViewValue),
                    .iconStyle(iconStyleDataViewValue),
                    .readOnly(readOnlyDataViewValue),
                    .lang(langDataViewValue),
                    .backgroundColor(backgroundColorDataViewValue),
                    .textareaColor(textareaColorDataViewValue),
                    .textareaBorderColor(textareaBorderColorDataViewValue),
                    .textColor(textColorDataViewValue),
                    .buttonColor(buttonColorDataViewValue),
                    .buttonTextColor(buttonTextColorDataViewValue)
                )
                
                expect(dataViewByEnums.jsonString).to(equal(dataView.jsonString))
            }
        }
        
        describe("For Toolbox.Feature.DataZoom.AxisIndexSelector") {
            
            let trueValue = true
            let falseValue = false
            let allString = "all"
            let noneString = "none"
            let intValue: UInt = UInt.max
            let arrayValue: [UInt] = [UInt.min, 0, 255, 8, 89]
            
            let trueAxisIndexSelector = Toolbox.Feature.DataZoom.AxisIndexSelector.bool(trueValue)
            let falseAxisIndexSelector = Toolbox.Feature.DataZoom.AxisIndexSelector.bool(falseValue)
            let intAxisIndexSelector = Toolbox.Feature.DataZoom.AxisIndexSelector.int(intValue)
            let arrayAxisIndexSelector = Toolbox.Feature.DataZoom.AxisIndexSelector.array(arrayValue)
            
            it("needs to check the enum case jsonString") {
                expect(trueAxisIndexSelector.jsonString).to(equal(allString.jsonString))
                expect(falseAxisIndexSelector.jsonString).to(equal(noneString.jsonString))
                expect(intAxisIndexSelector.jsonString).to(equal(intValue.jsonString))
                expect(arrayAxisIndexSelector.jsonString).to(equal(arrayValue.jsonString))
            }
            
            it("needs to check the BooleanLiteralConvertible, IntegerLiteralConvertible, ArrayLiteralConvertible") {
                let trueLiteral: Toolbox.Feature.DataZoom.AxisIndexSelector = true
                let falseLiteral: Toolbox.Feature.DataZoom.AxisIndexSelector = false
                let intLiteral: Toolbox.Feature.DataZoom.AxisIndexSelector = 18446744073709551615
                let arrayLiteral: Toolbox.Feature.DataZoom.AxisIndexSelector = [UInt.min, UInt(0), UInt(255), UInt(8), UInt(89)]
                
                expect(trueLiteral.jsonString).to(equal(trueAxisIndexSelector.jsonString))
                expect(falseLiteral.jsonString).to(equal(falseAxisIndexSelector.jsonString))
                expect(intLiteral.jsonString).to(equal(intAxisIndexSelector.jsonString))
                expect(arrayLiteral.jsonString).to(equal(arrayAxisIndexSelector.jsonString))
                
            }
        }
        
        
    }
}