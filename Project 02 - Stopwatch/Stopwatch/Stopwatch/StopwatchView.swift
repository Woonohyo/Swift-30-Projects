//
//  ContentView.swift
//  Stopwatch
//
//  Created by Woonohyo on 2020/06/11.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct StopwatchView: View {
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    VStack(alignment: .trailing, spacing: nil) {
                        Text("00:00:00").font(Font.system(size: 17))
                        Text("00:00:00").font(Font.system(size: 40))
                    }.frame(width: geometry.size.width, height: 156, alignment: .center)
                    
                    HStack(alignment: .center, spacing: 90) {
                        Button(action: {
                            
                        }) {
                            Text("Lap").foregroundColor(Color.blue)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Text("Start").foregroundColor(Color(#colorLiteral(red: 0.3324309289, green: 0.9990163445, blue: 0, alpha: 1)))
                        }
                    }.frame(width: geometry.size.width, height: 140, alignment: .center).background(Color(UIColor.secondarySystemBackground))
                    
                    List {
                        Text("Lap 3")
                        Text("Lap 2")
                        Text("Lap 1")
                    }.frame(minWidth: nil, idealWidth: nil, maxWidth: geometry.size.width, minHeight: nil, idealHeight: nil, maxHeight: .infinity, alignment: .center)
                }
            }.navigationBarTitle("Stopwatch", displayMode: .inline)
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
