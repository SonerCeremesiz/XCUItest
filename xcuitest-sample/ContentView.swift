//
//  ContentView.swift
//  xcuitest-sample
//
//  Created by Soner Ceremesiz on 12/11/2021.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var inputA = 0
    @State private var inputB = 0
    @State private var sum = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("InputA")
                            .border(Color.gray, width: 2)
                            .padding()
                            .multilineTextAlignment(.trailing)
                TextField("", value: $inputA, formatter: NumberFormatter())
                            .border(Color.gray, width: 2)
                            .padding()
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                            .accessibilityIdentifier("inputA")
            }
            
            HStack() {
                Text("InputB")
                            .border(Color.gray, width: 2)
                            .padding()
                            .multilineTextAlignment(.trailing)
                TextField("", value: $inputB, formatter: NumberFormatter())
                            .border(Color.gray, width: 2)
                            .padding()
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                            .accessibilityIdentifier("inputB")
            }
            
            Spacer()
            HStack() {
                Spacer()
                Button("Calculate") {
                    sum = inputA + inputB
                }
                .accessibilityIdentifier("calculate")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                Spacer()
            }
            
            HStack() {
                Text("Sum")
                            .border(Color.gray, width: 2)
                            .padding()
                            .multilineTextAlignment(.trailing)
                TextField("", value: $sum, formatter: NumberFormatter())
                            .border(Color.gray, width: 2)
                            .padding()
                            .disabled(true)
                            .multilineTextAlignment(.trailing)
                            .accessibilityIdentifier("sum")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
