#
#  Be sure to run `pod spec lint LXMButtonImagePosition.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LXMButtonImagePosition"
  s.version      = "1.2.0"
  s.summary      = "利用UIButton的titleEdgeInsets和imageEdgeInsets来实现文字和图片的自由排列的方法"
  s.description  = <<-DESC
                    利用UIButton的titleEdgeInsets和imageEdgeInsets来实现文字和图片的自由排列；注意：这个方法需要在设置图片和文字之后才可以调用，且button的大小要大于 图片大小+文字大小+spacing
                   DESC

  s.homepage     = "https://github.com/Phelthas/Demo_ButtonImageTitleEdgeInsets"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"

  s.author             = { "Phelthas" => "billthas@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/Phelthas/Demo_ButtonImageTitleEdgeInsets.git", :tag => "1.2.0" }

  s.source_files  = "Demo_ButtonImageTitleEdgeInsets/LXMButtonImagePosition/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # s.framework  = "SomeFramework"
  s.frameworks = "Foundation", "UIKit"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
