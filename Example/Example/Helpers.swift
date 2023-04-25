//
//  Helpers.swift
//  Example
//
//  Created by MrCreator on 4/25/23.
//

import SwiftUI


extension View {
    func safeAreaAdjuster(_ safeArea: EdgeInsets) -> some View {
        modifier(SafeAreaAdjuster(safeArea: safeArea))
    }
}

struct SafeAreaAdjuster: ViewModifier {
    let safeArea: EdgeInsets
    func body(content: Content) -> some View {
        content.padding(.top, safeArea.top)
            .padding(.bottom, safeArea.bottom)
            .padding(.leading, safeArea.leading)
            .padding(.bottom, safeArea.bottom)
    }
}

private struct SafeAreaInsetsKey: EnvironmentKey {
    static var defaultValue: EdgeInsets {
        (UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.safeAreaInsets ?? .zero).insets
    }
}

extension EnvironmentValues {
    var safeAreaInsets: EdgeInsets {
        self[SafeAreaInsetsKey.self]
    }
}

private extension UIEdgeInsets {
    var insets: EdgeInsets {
        EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
    }
}
