//
//  ProfileViewController.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/15.
//

import UIKit

class ProfileViewController: UIViewController {
    
// MARK: - Properties
    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    
    
    
    // MARK: - LIfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionVeiw()
    }
    
    // MARK: - Actions
    
    
    
    
    // MARK: - Helpers
    private func setupCollectionVeiw() {
        // delegate 연결
        profileCollectionView.delegate = self
        profileCollectionView.dataSource = self
        
        // cell 등록
        profileCollectionView.register(UINib(nibName: "ProfileCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ProfileCollectionViewCell.identifier)
    }
}


// MARK: UICollectionViewDelegate, UICollectionViewDataSource
extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCollectionViewCell.identifier, for: indexPath) as? ProfileCollectionViewCell else{
//            return UICollectionView()
            fatalError(" 셀 타입 캐스팅 실패...")
        }
        return cell
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width,
                    height: CGFloat(159))
    }
}
 
