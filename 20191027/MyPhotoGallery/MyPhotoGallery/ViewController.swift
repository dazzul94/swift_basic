//
//  ViewController.swift
//  MyPhotoGallery
//
//  Created by 503 on 2019/10/27.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit
// 카메라, 포토앨범 기능 추가
import MobileCoreServices

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    let imagePickerVC: UIImagePickerController! = UIImagePickerController()
    // 선택된 이미지 데이타
    var captureImage: UIImage!
    // 포토앨범(갤러리)와 카메라를 구분하기 위해서
    var flagImageSaved = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func onBtnGallery(_ sender: UIButton) {
        // SDK가 지원하는 기본 이미지 선택화면
        // 포토앨범에 접근가능한지?
        if(UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
            flagImageSaved = false
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .photoLibrary
            imagePickerVC.mediaTypes = [kUTTypeImage as String]
            // 잘라내기 편집 가능하도록
            imagePickerVC.allowsEditing = true
            present(imagePickerVC, animated: true, completion: nil)
        } else {
            print("포토앨범에 접근할 수 없습니다.")
        }
    }
    @IBAction func onBtnCamera(_ sender: UIButton) {
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        if mediaType.isEqual(to: kUTTypeImage as NSString as String) {
            captureImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            if let _ = captureImage {
                
            } else {
                print("original Image is nil")
                captureImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            }
            if flagImageSaved {
                // 가져온 이미지를 포토앨범에 저장 - 카메라에서 가져온 이미지라면
                UIImageWriteToSavedPhotosAlbum(captureImage, self, nil, nil)
            }
            imageView.image = captureImage
        }
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}

