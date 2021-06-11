//
//  ChipsView.swift
//  Recipe-App
//
//  Created by Gontse Ranoto on 2021/06/12.
//

import SwiftUI

struct ChipsView: View {
    @State var chipsList: [Tri] = []
    
    var body: some View {
        ForEach(chipsList) { chip in }
        
    }
}

struct ChipsView_Previews: PreviewProvider {
    static var previews: some View {
        ChipsView()
    }
}
