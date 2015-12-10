Pod::Spec.new do |s|
  s.name         = "LITabControl"
  s.version      = "0.0.3-Cabo"
  s.summary      = "An auto-layout based multi-tab control designed to look and behave like the tab control in Apple's Numbers spreadsheet."
  s.homepage     = "https://github.com/jjamminjim/LITabControl"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'Mark Onyschuk'
  s.source       = { :git => "https://github.com/jjamminjim/LITabControl.git", :tag => "v" + s.version.to_s }
  s.osx.deployment_target = '10.9'
  s.source_files = 'LITabControl/Classes/*.{h,m}'
  s.resources = "LITabControl/Classes/*.pdf", "LITabControl/Classes/*.png"
  s.framework  = 'Cocoa'
  s.requires_arc = true
end
