//
//  LoadableImageView.swift
//  MoviesApp_SwiftUI
//
//  Created by Gustavo Anjos on 17/02/21.
//

import SwiftUI

struct LoadableImageView: View {
    
    var imageFetcher: ImageFetcher
    
    var stateContent: AnyView {
        if let image = UIImage(data: imageFetcher.data) {
            return AnyView(
                Image(uiImage: image)
                    .resizable()
                    .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(24)
            )
        } else {
            return AnyView(
                ActivityIndicatorView(style: .medium)
            )
        }
    }
    
    init(with urlString: String) {
        imageFetcher = ImageFetcher(urlString: urlString)
    }
    
    var body: some View {
        
        HStack{
            stateContent
        }
        
    }
}

struct LoadableImageView_Previews: PreviewProvider {
    static var previews: some View {
        LoadableImageView(with: "https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png")
    }
}
