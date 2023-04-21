//
//  ContentView.swift
//  Touchdown
//
//  Created by Nahyun on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    
    //MARK: - Body
    var body: some View {
      FooterView()
            .padding(.horizontal)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
