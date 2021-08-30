//
//  ContentView.swift
//  Baguettes
//
//  Created by patrick on 30/8/21.
//

import SwiftUI

struct Row: View {
    
    let name: String
    let image: UIImage
    let color: UIColor
    
    var body: some View {
        HStack {
            Image(uiImage: image)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            Text(name)
                .font(.title2)
                .bold()
                .foregroundColor(Color(color))
        }
    }

}

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            List {
                Row(name: Strings.List.chocolate, image: Assets.Images.chocolate.image, color: Assets.Colors.chocolate.color)
                Row(name: Strings.List.fruit, image: Assets.Images.fruit.image, color: Assets.Colors.fruit.color)
                Row(name: Strings.List.plain, image: Assets.Images.plain.image, color: Assets.Colors.plain.color)
            }
            .navigationTitle("Baguettes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
