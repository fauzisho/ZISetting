Pod::Spec.new do |s|

s.name         = "ZISetting"
s.version      = "0.0.1"
s.summary      = "ZISetting"

s.homepage     = "https://github.com/fauzisho"
# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

s.license      = "MIT"

s.author       = { "fauzisholih@gmail.com" => "fauzisholih@gmail.com" }

s.platform     = :ios, "9.0"

#s.source       = { :path => "." }
s.source       = { :git => 'https://github.com/fauzisho', :tag => s.version.to_s }

s.source_files  = "ZISetting", "ZISetting/**/*.{h,m,swift,xib}"

s.resources = "ZISetting/**/*.xcassets"
s.resource_bundles = {
    'ZISetting' => ['ZISetting/**/*.{lproj,xib,xcassets,imageset,png,mp3}']
}

s.framework		= 'UIKit', 'AVFoundation'
s.requires_arc	= false


end
