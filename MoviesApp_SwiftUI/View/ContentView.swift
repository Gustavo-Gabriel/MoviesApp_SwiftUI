//
//  ContentView.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 16/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(){
                getRequest(url: url) {
                    (resultado, erro) in
                    
                    if resultado != nil {
                        print("Sua requisição foi realizada com sucesso: \n \(resultado!)")
                    } else{
                        print("A requisição nao funcionou")
                    }
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
