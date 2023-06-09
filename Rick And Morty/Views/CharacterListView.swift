//
//  CharacterListView.swift
//  Rick And Morty
//
//  Created by Duke Win on 4/10/23.
//

import UIKit

/// View that handles showing list of characters, loader, etc.
class CharacterListView: UIView {
    
    private let viewModel = CharacterListViewViewModel()
    
    private let spinner: UIActivityIndicatorView = {
       
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    private let collectionView: UICollectionView = {
       
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isHidden = true
        collectionView.alpha = 0
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
        
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func setupView() {
        addSubviews(collectionView, spinner)
        addConstraints()
        spinner.startAnimating()
//        viewModel.fetchCharacters()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        
        collectionView.delegate = viewModel
        collectionView.dataSource = viewModel
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            
            self.spinner.stopAnimating()
            self.collectionView.isHidden = false
            
            UIView.animate(withDuration: 0.4) {
                self.collectionView.alpha = 1.0
            }
        })
    }

    private func addConstraints() {
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor)
        ])
    }
}
