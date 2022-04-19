//
//  ReelsViewController.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/19.
//

import UIKit

class ReelsViewController: UIViewController {
 
    
// MARK: - Properties
    
    @IBOutlet var collectionView: UICollectionView!
    
    
// MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
     
    
    // MARK: - Actions
    
    
    
    
    // MARK: - Helpers
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "ReelsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ReelsCollectionViewCell.identifier)
        
        
    }
    
}


// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension ReelsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->
    Int {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReelsCollectionViewCell.identifier,
        for: indexPath) as? ReelsCollectionViewCell else { fatalError() }
        
        return cell
    }
    
    
}

// MARK: -  UICollectionViewFlowLayout

extension ReelsViewController: UICollectionViewDelegateFlowLayout {
    
}
