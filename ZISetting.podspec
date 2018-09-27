Pod::Spec.new do |s|

s.name         = "ZISetting"
s.version      = "0.0.1"
s.summary      = "Sample Setting UI with TableView"
s.homepage     = "https://github.com/fauzisho/ZISetting.git"
s.license      = "MIT"
s.author       = { "fauzisholih@gmail.com" => "fauzisholih@gmail.com" }
s.platform     = :ios, "9.0"
s.source       = { :git => 'https://github.com/fauzisho/ZISetting.git', :tag => s.version.to_s }
s.source_files  = "ZISetting", "ZISetting/**/*.{h,m,swift,xib}"
s.framework		= 'UIKit', 'AVFoundation'



end
