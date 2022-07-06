//
//  ContentView.swift
//  iExpense
//
//  Created by Debashish Mondal on 5/3/22.
//

import SwiftUI

struct secondView: View {
    @State private var showingSheet1 = false
    var body: some View {
        ZStack{
            Button("Show First View 🦊"){
                showingSheet1.toggle()
            }
            .sheet(isPresented: $showingSheet1){
                contentView()
                
            }
            
        }
        
    }
}





struct contentView: View {
    @State private var showingSheet = false
    
    var body: some View{
        Button("Show Second View 🐶"){
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



