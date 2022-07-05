//
//  ContentView.swift
//  iExpense
//
//  Created by Debashish Mondal on 5/3/22.
//

import SwiftUI

struct secondView: View {
    var body: some View {
        Text("Second View")
    }
}



struct contentView: View {
    @State private var showingSheet = false
    
    var body: some View{
        Button("Second View"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            secondView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
}
