Pod::Spec.new do |s|
  s.name                = "PRColor"
  s.version             = "0.1"
  s.summary             = "Yet another color util for iOS."
  s.homepage            = "https://github.com/Elethom/PRColor"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.author              = { "Elethom Hunter" => "elethomhunter@gmail.com" }
  s.social_media_url    = "http://twitter.com/ElethomHunter"
  s.platform            = :ios
  s.source              = { :git => "https://github.com/Elethom/PRColor.git", :tag => s.version }
  s.source_files        = "Classes/*.{h,m}"
  s.public_header_files = "Classes/*.h"
  s.requires_arc        = true
end
