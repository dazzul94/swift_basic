***

### Swift 
> * day01, day02, day03
>   + 이론 

> * day04
>     + 프로젝트 만들기  
> XCODE > create a new Xcode project  
> iOS, single view app    
> product Name : MyFirstApp   
> Team : 개발자계정이 있으면 등록  
> Organization Identifier: 알아서  
> Bundle Identifier : 중복되지않게  
> 언어 :Swift   
> Interface : Storyboard  
> 전부체크해제(local git 포함) > create  
> Deployment Info : ios 13.0
>   + 프로젝트 설명   
AppDelegate.swift : App초기 제어코드, func application > 앱 실행시     
SceneDelegate.swift : swift ui 초기 제어코드, Delegate : 이벤트를 받는 곳.  
Main.Storyboard : 뷰 화면 레이아웃 에디터  
ViewController.swift : 뷰 화면 제어코드  
Assets.xcassets : 이미지 파일들  
LaunchScreen.Storyboard : 스플래시화면(인트로)  
info.plist : 환경 구성파일  
products > app : 실행파일( 한프로젝트 -> 여러실행파일을 만들 수 있다)  
>   + 참고1     
            원격저장(서버)(추천:ex)mysql,oracle…)  
            SQLite3  
            Realm(hot)  
            Core Data  
            User Defaults : key&value (쿠키처럼간단하게 로컬에 저장, 위 세개는 복잡)  
>    + 레이아웃  
    1. 오토 리사이징 <- 간단한 배치  
    2. 오토 레이아웃 <- 복잡한 배치  
    3. SwiftUI 코드 기반)  
  

  
***


# 버튼을 이미지로 변경하기
+ 버튼 아이콘 다운로드   
+ 버튼 추가 -> 이미지 적용

# imgeView 만들기
이미지 캡쳐: command + shift + 4
이미지 뷰어 추가

# 새로운 페이지 생성

+ 생성할때 선택
    - SecondViewController  
    - UIViewController  

+ customViewController를 SecondViewController로 지정  
+ textFiled에 입력될 때 컨트롤러한테 이벤트를 전달한다.(delegate)   
-> SecondViewController로 드래그 ....텍스트필드 -> 텍스트 뷰어

# git 계정 설정
> git config --list  
> git config --global user.name "dazzul94"  
> git config --global user.email dazzul94@gmail.com  

## myViewStruct
# 화면 이동
페이지 세개를 만들고 메인페이지를 선택한 상태에서   
Editor> Embeded in> Navigation Controller

# 새로운 프로젝트 생성
![스크린샷1](https://raw.githubusercontent.com/dazzul94/swift_basic/master/20191013/screenshot/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202019-10-13%2016.19.07.png)
![스크린샷2](https://raw.githubusercontent.com/dazzul94/swift_basic/master/20191013/screenshot/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202019-10-13%2016.19.19.png)
![스크린샷3](https://raw.githubusercontent.com/dazzul94/swift_basic/master/20191013/screenshot/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202019-10-13%2015.41.08.png)
![스크린샷4](https://raw.githubusercontent.com/dazzul94/swift_basic/master/20191013/screenshot/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202019-10-13%2015.41.28.png)