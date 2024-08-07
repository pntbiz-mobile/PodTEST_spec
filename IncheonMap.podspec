#
# Be sure to run `pod lib lint IncheonMap.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'IncheonMap'
    s.version          = '0.1.1'
    s.summary          = '인천공항지도 모듈'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
    s.description      = '인천공항 길안내 서비스를 포함하는 SDK입니다'
  
    s.homepage         = 'https://github.com/pntbiz-mobile/PodTEST'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'pntbiz-parkjungha' => 'parkjh@pntbiz.com' }
    s.source           = { :git => 'https://github.com/pntbiz-mobile/PodTEST.git', :tag => s.version.to_s }
    # s.vendored_frameworks = 'IncheonAirportMapSDK.xcframework'
    s.vendored_frameworks = 'IncheonAirportMapSDK.framework'
    s.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 armv7 arm64',
      'VALID_ARCHS' => 'x86_64 armv7 arm64',
      }
    # s.user_target_xcconfig = {
    #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 armv7 arm64',
    #   'VALID_ARCHS' => 'x86_64 armv7 arm64',
    #   }
    
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
    s.swift_version = [5.5]
    s.platform = :ios, '14.0'
    s.ios.deployment_target = '14.0'
    
    # s.resource_bundles = {
    #   'IncheonMap' => ['IncheonMap/Assets/*.png']
    # }
  
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'GoogleMaps', '~> 8.4.0'
    s.dependency 'Google-Maps-iOS-Utils', '~> 4.0.0'
    # s.dependency 'Alamofire'
  end
  