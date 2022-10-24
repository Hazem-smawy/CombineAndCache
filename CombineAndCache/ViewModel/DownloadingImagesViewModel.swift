//
//  DownloadingImagesViewModel.swift
//  CombineAndCache
//
//  Created by hazem smawy on 10/23/22.
//

import Foundation
import Combine

class DownloadingImagesViewModel: ObservableObject {
    var cancellables = Set<AnyCancellable>()
    @Published var dataArray: [PhotoModel] = [ ]
    let dataService = PhotoModelDataService.instance
    
    init(){
        addSubscribers()
    }
    func addSubscribers() {
        dataService.$photoModels
            .sink {[weak self] photo in
                self?.dataArray = photo
            }
            .store(in: &cancellables)

    }
}
