//
//  DownloadingImagesRowView.swift
//  CombineAndCache
//
//  Created by hazem smawy on 10/23/22.
//

import SwiftUI

struct DownloadingImagesRowView: View {
    var item :PhotoModel
    var body: some View {
        HStack {
            ImageView(url: item.url,key: "\(item.id)")
                .frame(width: 75, height: 75)
            VStack(alignment:.leading) {
                Text(item.title)
                    .font(.headline)
                Text(item.url)
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}


