Pod::Spec.new do |spec|
  spec.name         = 'UIDeviceHardware'
  spec.version      = '0.0.1'
  spec.platform     = :ios, '4.3'
  spec.license      = 'BSD'
  spec.source       = { :git => 'https://github.com/holgersindbaek/UIDeviceIdentifier.git', :tag => spec.version.to_s }
  spec.source_files = 'UIDeviceHardware/*.{h,m,c}'
  spec.requires_arc = true
  spec.prefix_header_contents = '#import <UIDeviceHardware/UIDeviceHardware.h>'
end