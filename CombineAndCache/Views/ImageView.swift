//
//  ImageView.swift
//  CombineAndCache
//
//  Created by hazem smawy on 10/23/22.
//

import SwiftUI

struct ImageView: View {
    @StateObject var loader:ImageViewModel
    
    init(url:String,key:String){
        _loader = StateObject(wrappedValue: ImageViewModel(url: url,key: key))
    }
   
    var body: some View {
        ZStack {
            if loader.isLoading {
                ProgressView()
            }else if let image = loader.image {
                Image(uiImage: image)
                    .resizable()
                    .clipShape(Circle())
            }
        }
    }
}

