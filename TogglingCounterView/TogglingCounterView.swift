//
//  ContentView.swift
//  TogglingCounterView
//
//  Created by Ralf Ebert on 27.09.21.
//

import SwiftUI

struct TogglingCounterView: View {
    @State var toggleActive = false

    var body: some View {
        VStack {
            Toggle("Toggle", isOn: $toggleActive)
            if toggleActive {
                CounterView()
            }
        }
    }
}

struct CounterView: View {
    @State var value = 0

    var body: some View {
        Button("Increment \(value)") {
            value += 1
        }
    }
}

struct TogglingCounterView_Previews: PreviewProvider {
    static var previews: some View {
        TogglingCounterView()
    }
}
