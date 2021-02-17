//
//  ActivityIndicatorView.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 17/02/21.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        
        return UIActivityIndicatorView(style: style)
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        
        uiView.startAnimating()
    
    }
}

struct ActivityIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView(style: .medium)
    }
}
