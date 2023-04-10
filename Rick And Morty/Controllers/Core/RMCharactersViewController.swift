//
//  RMCharactersViewController.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharactersViewController: UIViewController {

    private let characterListView = CharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Characters"
        
        view.backgroundColor = .systemBackground
        view.addSubview(characterListView)
        
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)
        ])
        
        
        
//        let request = RMRequest (
//            endpoint: .character,
//            queryParameters: [
//                URLQueryItem(name: "name", value: "rick"),
//                URLQueryItem(name: "status", value: "alive")
//            ]
//        )
//        
//        //print(request.url!)
//        
//        RMService.shared.execute(request,
//                                 expecting: RMCharacter.self) { result in
//            switch result {
//                case .success:
//                        break
//                case .failure(let error):
//                    print(String(describing: error))
//            }
//        }
    }
}
