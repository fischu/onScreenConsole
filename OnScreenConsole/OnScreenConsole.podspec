Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "OnScreenConsole"
s.summary = "OnScreenConsole - a debugging console directly on the app's screen. "
s.requires_arc = true

# 2
s.version = "1.0"

# 3
s.license = { :type => "Apache", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Mihai Fischer" => "hi@mihaifischer.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/fischu/onScreenConsole"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/fischu/onScreenConsole.git",
:tag => "#{s.version}" }

# 7
s.framework = "UIKit"

# 8
s.source_files = "OnScreenConsole/OnScreenConsole/**/*.{swift}"

# 9
#s.resources = "OnScreenConsole/OnScreenConsole/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "4.2"

end
