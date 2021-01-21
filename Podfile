platform :ios, '12.0'
inhibit_all_warnings!
use_frameworks!

def external
  source 'https://github.com/CocoaPods/Specs.git'
  pod 'SnapKit'
  pod 'Firebase/Core'
  pod 'Firebase/Messaging'
  pod 'Firebase/RemoteConfig'
  pod 'Firebase/Crashlytics'
  pod 'FBSDKCoreKit'
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'SwiftGen'
  pod 'SwiftLint'
  pod 'SwiftFormat/CLI'
  pod 'lottie-ios'
  pod 'SwiftTweaks', :git => 'https://github.com/Khan/SwiftTweaks.git', :branch => 'master'
end

def internal
  source 'git@github.com:pocket-ninja/specs.git'
  pod 'PocketAnalytics'
end

target 'StreetArt' do
  external
  internal
  
  # target 'UnitTests' do
  #   inherit! :search_paths
  # end
end
