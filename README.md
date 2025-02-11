# RandomColorApp
RandomColorApp은 버튼을 눌러 배경색을 무작위로 변경할 수 있는 iOS 애플리케이션이다.  
사용자는 `Change Color` 버튼을 눌러 랜덤 색상을 적용할 수 있으며, `Reset` 버튼을 눌러 기본 흰색으로 되돌릴 수 있다.

## 주요 기능
- 배경색 랜덤 변경: 버튼 클릭 시 배경색이 무작위로 변경된다.
- 초기 상태로 리셋: Reset 버튼을 누르면 배경이 흰색으로 초기화된다.
- RGB 값 표시: 현재 배경색의 RGB 값을 화면에 표시한다.
- 코드베이스로 UI 구현: `UIView`, `UILabel`, `UIButton`을 코드로 구성한다.

## 기술 스택
- **프레임워크**: UIKit
- **설계 패턴**: MVC (Model-View-Controller)
- **UI 구성**: 코드베이스

## 스크린샷
| 랜덤 색상 변경 | 리셋 버튼 사용 |
|---------------|-------------|
| <img src="https://github.com/user-attachments/assets/87ba93dc-9859-48c7-aa37-4af4b5522d72" width="200" height="400"/> | <img src="https://github.com/user-attachments/assets/78d369a4-be62-4b47-8ee7-32e4ef13c7f4" width="200" height="400"/> |

## 프로젝트 구조
```
📦 RandomColorApp
├── 📂 RandomColorApp
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
|   ├── MainView.swift
│   ├── MainViewController.swift
|   ├── LaunchScreen.storyboard
│   ├── Assets.xcassets
│   ├── Info.plist
└── README.md
```
