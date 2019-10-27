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

import AVKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var containerView: UIView!
    
    private var isUserSubscribed = true
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
            myAlert(title: "알럿창제목", message: "포토앨범에 접근할 수 없습니다.")
        }
    }
    @IBAction func onBtnCamera(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)) {
            flagImageSaved = true
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .camera
            imagePickerVC.mediaTypes = [kUTTypeImage as String]
            // 잘라내기 편집 가능하도록
            imagePickerVC.allowsEditing = true
            present(imagePickerVC, animated: true, completion: nil)
        } else {
            myAlert(title: "알럿창제목", message: "카메라에 접근할 수 없습니다.")
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        
        if mediaType.isEqual(to: kUTTypeImage as NSString as String) {
            if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
                imageView.image = editedImage
                captureImage = editedImage
            }
            else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                imageView.image = originalImage
                captureImage = originalImage
            }
            if flagImageSaved {
                // 가져온 이미지를 포토앨범에 저장 - 카메라에서 가져온 이미지라면
                UIImageWriteToSavedPhotosAlbum(captureImage, self, nil, nil)
            }
            self.dismiss(animated: true, completion: nil)
        } else {
            let videoURL = (info[UIImagePickerController.InfoKey.mediaURL] as! URL)
            self.dismiss(animated: true) {
                let player = AVPlayer(url: videoURL)
                let vcPlayer = AVPlayerViewController()
                vcPlayer.player = player
                self.present(vcPlayer, animated:true, completion:nil)
            }
            if flagImageSaved {
                UISaveVideoAtPathToSavedPhotosAlbum(videoURL.relativePath, self, nil, nil)
            }
        }
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onBtnMovieLoad(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
           flagImageSaved = false
           imagePickerVC.delegate = self
           imagePickerVC.sourceType = .photoLibrary
           imagePickerVC.mediaTypes = [kUTTypeMovie as String]
           // 잘라내기 편집 가능하도록
           imagePickerVC.allowsEditing = false
           present(imagePickerVC, animated: true, completion: nil)
       } else {
            myAlert(title: "알럿창제목", message: "포토앨범(비디오)에 접근할 수 없습니다.")
       }
    }
    @IBAction func onBtnMovieRecord(_ sender: UIButton) {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)) {
            flagImageSaved = true
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .camera
            imagePickerVC.mediaTypes = [kUTTypeMovie as String]
            // 잘라내기 편집 가능하도록
            imagePickerVC.allowsEditing = false
            present(imagePickerVC, animated: true, completion: nil)
        } else {
            myAlert(title: "알럿창제목", message: "카메라(비디오)에 접근할 수 없습니다.")
        }
    }
    func myAlert(title: String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}

