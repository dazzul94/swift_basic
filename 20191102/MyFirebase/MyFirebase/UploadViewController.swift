//
//  UploadViewController.swift
//  MyFirebase
//
//  Created by 503 on 2019/11/02.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage

class UploadViewController: UIViewController {

    @IBOutlet weak var imageViewIdol: UIImageView!
    @IBOutlet weak var labelURL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func onBtnUpload(_ sender: UIButton) {
        let storage = Storage.storage()
        let storageRef = storage.reference()
        let data = imageViewIdol.image!.pngData()
        
        // 이름이 겹치니까 유니크 아이디를 발생시키거나
        // 현재시간분초를 파일명으로 지정.
        let timeStamp = Int(NSDate.timeIntervalSinceReferenceDate*1000)
        let uniqueImageFileName = "idol" + String(timeStamp) + ".png"
        
        // 올라갈 이미지의 이름을 지정함.
        let serverImageRef = storageRef.child(uniqueImageFileName)
        
        // 메타데이터 추가
        let metadata = StorageMetadata()
        metadata.contentType = "image/png"
        
        let uploadTask = serverImageRef.putData(data!, metadata: metadata) {
            (metadata, error) in
            guard let metadata = metadata else {
                return
            }
            let size = metadata.size
            serverImageRef.downloadURL {
                (url, error) in
                guard let downloadURL = url else {
                    return
                }
                self.labelURL.text = downloadURL.absoluteString
                print(downloadURL.absoluteString)
            }
        }
        
    }
}
