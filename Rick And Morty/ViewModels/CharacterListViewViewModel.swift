//
//  CharacterListViewViewModel.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/10/23.
//

import UIKit

final class CharacterListViewViewModel: NSObject {
    
    func fetchCharacters() {
        
        RMService.shared.execute(.listCharacterRequests,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            
            switch result {
                
            case .success(let model):
//                print(String(describing: model))
                print("Total: " + String(model.info.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension CharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    // Datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemCyan
        return cell
    }
    
    //FlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30)/2
        
        return CGSize(width: width, height: width * 1.5)
    }
}
