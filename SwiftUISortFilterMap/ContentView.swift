//
//  ContentView.swift
//  SwiftUISortFilterMap
//
//  Created by M.Ömer Ünver on 16.08.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = UserViewModel()
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                ForEach(vm.mappedArray, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
//                ForEach(vm.filteredArray, id: \.id) { user in
//                    VStack(alignment: .leading) {
//                        Text("\(user.name)")
//                            .font(.headline)
//                    
//                    HStack {
//                        Text("Points : \(user.points)")
//                        Spacer()
//                        if user.isVerified {
//                            Image(systemName: "flame.fill")
//                                .foregroundColor(.white)
//                        }
//                    }
//                    }
//                }
//                
//                .padding()
//                .foregroundColor(.white)
//                .background(Color.blue.cornerRadius(10))
//                .padding(.horizontal)
            }
            
           
        }
    }
}

#Preview {
    ContentView()
}
