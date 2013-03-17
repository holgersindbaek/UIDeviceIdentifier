Pod::Spec.new do |s|
  s.name         = "UIDeviceIdentifier"
  s.version      = "0.0.1"
  s.summary      = "Shows the current device in a string"
  s.homepage     = "https://github.com/holgersindbaek/UIDeviceIdentifier.git"

  s.license      = { :type => 'BSD' }
  s.author       = { "Holger Sindbaek" => "holgersindbaek@gmail.com" }
  s.source       = { 
    :git => "https://github.com/holgersindbaek/UIDeviceIdentifier.git", 
    :tag => "0.0.1"
  }

  s.platform     = :ios, '4.0'
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end