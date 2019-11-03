### - pod 추가
+ 프로젝트 폴더로 이동 + cmd창
+ pod init
+ pod install
+ ls 하면 
    - 503ui-iMac:MyCafe a503-22$ ls  
    MyCafe			MyCafe.xcworkspace	Podfile.lock  
    MyCafe.xcodeproj	Podfile			Pods
+ open open MyCafe.xcworkspace/
+ Pods/Podfile에 pod 추가
    - pod 'Toast-Swift','~> 5.0.0'
    - pod 'SDWebImage', '~> 5.0'
+ pod install

### - 앱 이름 변경 
projct identity 에서 DisplayName 을 변경(한글도 가능)

### - 리소스 파일 추가
필요한 리소스를 image 폴더에 추가

### - 앱 아이콘 변경
+ asset image catalog 로 아이콘 제작
+ 만들어진 폴더를 기존에 있던 Aseets.xcassets를 삭제하고 붙여넣기

### - 사진 못 불러올 때 
+ info.list에서 App Transport Sequrity Settins 
    - Allow Arbitary developemnt  - YES

### - Launch Image 설정
+ LaunchStoryboard 에 추가