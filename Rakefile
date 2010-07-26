require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "tinymce_splitblockquote"
    gem.version = "0.0.4"
    gem.summary = %Q{A tiny_mce gem's plugin installing my splitblockquote plugin.}
    gem.description = %Q{This plugin splits (nested) blockquotes when the user try to break lines into them.}

    gem.email = "pguiran@linagora.com"
    gem.homepage = "http://github.com/Tauop/tinymce_splitblockquote"
    gem.authors = ["Guiran Patrick"]

    gem.files = Dir["lib/**/*", "[A-Z]*", "tinymce_splitblockquote.gemspec"]
    gem.require_path = "lib"

    gem.extra_rdoc_files = Dir["*.rdoc"]
    gem.rdoc_options = ["--charset=UTF-8", "--exclude=lib/assets"]

    gem.add_dependency('tiny_mce', '>= 0.1.4')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
