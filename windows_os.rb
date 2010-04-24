#!/opt/local/bin/ruby
# -*- coding: utf-8 -*-

def windows_os?
  RUBY_PLATFORM =~ /mswin(?!ce)|mingw|cygwin|bccwin/
end

if (windows_os?)
  puts "Windowsです"
else
  puts "Windowsではありません"
end
