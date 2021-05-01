//
//  MultipleSelectionRow.swift
//  Team7
//
//  Created by Amanda Brode on 4/24/21.
//

import SwiftUI

struct MultipleSelectionRow: View {
    var title: String = ""
    var isSelected: Bool;
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}
