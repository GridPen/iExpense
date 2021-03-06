//
//  ContentView.swift
//  iExpense
//
//  Created by Debashish Mondal on 5/3/22.
//

import SwiftUI




//First View

struct firstView : View{
    @Environment(\.dismiss) var dismiss
    @State private var showSheet2 = false
    var body: some View{
        ZStack{
            Color.gray
                .ignoresSafeArea()
            Button("Dismiss"){
                dismiss()
//                showSheet2.toggle()
                
            }
            .sheet(isPresented: $showSheet2){
                contentView()
            }
        }
    }
}


// Second View
struct secondView: View {
    @State private var showingSheet1 = false
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            Button("Show First View 🦊"){
                showingSheet1.toggle()
            }
            .sheet(isPresented: $showingSheet1){
                firstView()
                
            }
            
            
        }
        
        
    }
}


//Main View

struct contentView: View {
    @State private var showingSheet = false
    
    var body: some View{
        ZStack{
            Color.purple
                .ignoresSafeArea()
            
            Button("Show Second View 🐶"){
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet){
                secondView()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
}



