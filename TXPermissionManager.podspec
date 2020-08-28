#
# Be sure to run `pod lib lint TXPermissionManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TXPermissionManager'
  s.version          = '0.1.0'
  s.summary          = '这是一个iOS权限管理器,主要简化获取iOS权限繁琐问题。'
  s.description      = <<-DESC
  由TX所开发的iOS权限管理器,主要简化获取iOS权限繁琐问题。
                       DESC
  s.homepage         = 'https://github.com/xtzPioneer/TXPermissionManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xtzPioneer' => 'xtz_pioneer@icloud.com' }
  s.source           = { :git => 'https://github.com/xtzPioneer/TXPermissionManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  
  # 核心协议
  s.subspec 'CoreProtocol' do |ss|
    ss.source_files = 'TXPermissionManager/Classes/CoreProtocol/*.h'
    ss.ios.frameworks = "Foundation" , "UIKit"
  end
  
  # 核心
  s.subspec 'Core' do |ss|
    ss.source_files = 'TXPermissionManager/Classes/Core/*.{h,m}'
    ss.dependency 'TXPermissionManager/CoreProtocol'
  end
  
  # 管理器
  s.subspec 'Manager' do |ss|
    ss.source_files = 'TXPermissionManager/Classes/Manager/*.{h,m}'
    ss.dependency 'TXPermissionManager/Core'
  end
  
  # 相册权限
  s.subspec 'Photo' do |ss|
    ss.source_files = 'TXPermissionManager/Classes/Photo/*.{h,m}'
    ss.dependency 'TXPermissionManager/CoreProtocol'
  end
  
end
