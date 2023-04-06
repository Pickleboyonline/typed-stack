//
//  ContentView.swift
//  TypedStack
//
//  Created by Imran Shitta-Bey on 4/6/23.
//

import SwiftUI
import OpenAPIClient

struct ContentView: View {
    
    @State private var text = "Hello World!"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .foregroundColor(Color.red)
                .imageScale(.large)
                
            Text(text).onAppear() {
                print("Hello")
                hello {
                    res in
                    self.text = res
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func hello(handler: @escaping (String) -> Void) {
    let pet = Pet(name: "Cool Beans You!", photoUrls: ["Hey"], status: .none)
    
    PetAPI.addPet(pet: pet) {
        (response, error) in
        guard error == nil else {
            print(error ?? "Error!")
            return
        }

        if (response != nil) {
            dump(response)
            handler(response?.name ?? "")
        }
    }
}
