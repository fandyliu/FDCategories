Pod::Spec.new do |s|
  s.name         = ‘FDCategories’
  s.version      = ‘0.0.1’
  s.summary      = ‘Some categories for simpler iOS development.’
  s.license      = { :type => ‘MIT’, :file => ‘LICENSE’ }
  s.authors      = { ‘fandylau’ => ‘fandylau2011@outlook.com’ }
  # s.social_media_url   = ‘http://twitter.com/liuhuan'
  s.homepage     = ‘https://github.com/FandyLiu/FDCategories'
  s.platform     = :ios, ‘7.0’
  s.ios.deployment_target = ‘7.0’
  s.source       = { :git => ‘https://github.com/FandyLiu/FDCategories.git', :tag => s.version, :submodules => true  }
  s.requires_arc = true

  s.source_files = 'FDCategories/**/*.{h,m}'
  s.public_header_files = ‘FDCategories/**/*.{h}'

  s.frameworks = 'UIKit', 'CoreFoundation' ,'QuartzCore', 'CoreGraphics', 'CoreImage', 'CoreText', 'ImageIO', 'Accelerate'


  # s.library   = ‘iconv’
  # s.libraries = ‘iconv’, ‘xml2’


end
