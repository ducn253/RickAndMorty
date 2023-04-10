//
//  RMCharactersViewController.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/9/23.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
//        let request = RMRequest (
//            endpoint: .character,
//            queryParameters: [
//                URLQueryItem(name: "name", value: "rick"),
//                URLQueryItem(name: "status", value: "alive")
//            ]
//        )
//        
//        print(request.url)
//        
//        RMService.shared.execute(request,
//                                 expecting: RMCharacter.self) { result in
//            switch result {
//            case .success(RMCharacter);
//            }
//        }
    }
}
