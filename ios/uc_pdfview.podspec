#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'uc_pdfview'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin that display a pdf using PDFkit.'
  s.description      = <<-DESC
  A Flutter plugin for display pdf from the library as well as from url
  Downloaded by pub (not CocoaPods).
                       DESC
  s.homepage         = 'https://github.com/abhay0648/uc_pdfview'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'abhay' => 'abhay.dhiman0648@gmail.com' }
  s.source           = { :http => 'https://github.com/abhay0648/uc_pdfview' }
  s.documentation_url = 'https://pub.dev/packages/uc_pdfview'
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
end

