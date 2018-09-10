//
//  CarnivalWheelSlice.swift
//  TTFortuneWheelSample
//
//  Created by Efraim Budusan on 11/1/17.
//  Copyright © 2017 Tapptitude. All rights reserved.
//

import Foundation

public class CarnivalWheelSlice: FortuneWheelSliceProtocol {
    public var image: UIImage

    public enum Style {
        case brickRed
        case sandYellow
        case babyBlue
        case deepBlue
    }
    
    public var title: String
    public var degree: CGFloat = 0.0
    
    public var backgroundColor: UIColor? {
        switch style {
        case .brickRed: return TTUtils.uiColor(from:0xE27230)
        case .sandYellow: return TTUtils.uiColor(from:0xF7D565)
        case .babyBlue: return TTUtils.uiColor(from:0x93D0C4)
        case .deepBlue: return TTUtils.uiColor(from:0x2A7F7F)
        }
    }
    
    public var fontColor: UIColor {
        return UIColor.white
    }
    
    public var offsetFromExterior:CGFloat {
        return 10.0
    }
    
    public var font: UIFont {
        switch style {
        case .brickRed: return UIFont(name: "ChunkFive", size: 22.0)!
        case .sandYellow: return UIFont(name: "Lobster 1.3", size: 22.0)!
        case .babyBlue: return UIFont(name: "Phosphate", size: 22.0)!
        case .deepBlue: return UIFont(name: "Bebas", size: 22.0)!
        }
    }
    
    public var stroke: StrokeInfo? {
        return StrokeInfo(color: UIColor.white, width: 1.0)
    }
    
    public var style:Style = .brickRed
    
    public init(title:String, image: UIImage) {
        self.title = title
        self.image = image
    }
    
    public convenience init(title:String, degree:CGFloat, image: UIImage) {
        self.init(title:title, image: image)
        self.degree = degree
    }
    
}
