#
# Be sure to run `pod lib lint GJControlStyle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GJControlStyle'
  s.version          = '1.0.7'
  s.summary          = 'Point syntax to create UI controls.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Point syntax to create UI controls to make the creation of controls more concise
                       DESC

  s.homepage         = 'https://github.com/gaogee/GJControlStyle'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gaogee' => 'gaoju_os@163.com' }
  s.source           = { :git => 'https://github.com/gaogee/GJControlStyle.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.zhihu.com/people/flutter-45-53<gaogee>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'GJControlStyle/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GJControlStyle' => ['GJControlStyle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
