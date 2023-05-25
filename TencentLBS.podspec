Pod::Spec.new do |s|
  s.name         = "TencentLBS"
  s.version      = "4.1.1.1"
  s.summary      = "腾讯定位"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '"-ObjC"' }
  s.description  = "腾讯定位"
  s.homepage     = "http://www.tencent.com"
  s.license      = "MIT"
  s.author             = { "" => "" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "http://xxxx", :tag =>""}
  s.static_framework = true
  s.libraries = 'libz.1.2.5.tbd'

  s.subspec 'headers' do |headers|
    headers.source_files  = "Headers/*.{h}"
  end
  
  s.subspec 'lib' do |lib|
    lib.ios.vendored_frameworks = 'FrameWork/TencentLBS.framework'
  end


end
