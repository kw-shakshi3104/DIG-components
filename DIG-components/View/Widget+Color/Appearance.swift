//
//  Appearance.swift
//  DIG-components
//
import SwiftUI

// MARK: -
enum Appearance: CaseIterable {
    case light
    case dark
    
    var foregroundColor: Color {
        switch self {
        case .light:
            return .black
        case .dark:
            return .white
        }
    }
    
    var widgetColor: Color {
        switch self {
        case .light:
            return .white
        case .dark:
            return Color(0x1c1c1e)
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .light:
            return Color(0xf2f2f7)
        case .dark:
            return .black
        }
    }
}
