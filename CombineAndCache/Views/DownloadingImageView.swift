//
//  DownloadingImageView.swift
//  CombineAndCache
//
//  Created by hazem smawy on 10/23/22.
//

import SwiftUI

struct DownloadingImageView: View {
    // MARK: - Prop
    @StateObject var vm = DownloadingImagesViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.dataArray){item in
                   DownloadingImagesRowView(item: item)
                }
            }
            
            .navigationBarTitle("Downloading Image!")
        }
    }
}

struct DownloadingImageView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImageView()
    }
}
