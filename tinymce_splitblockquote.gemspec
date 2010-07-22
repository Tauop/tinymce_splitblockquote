# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tinymce_splitblockquote}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Guiran Patrick"]
  s.date = %q{2010-07-22}
  s.description = %q{This plugin splits (nested) blockquotes when the user try to break lines into them.}
  s.email = %q{pguiran@linagora.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "COPYING",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "lib/assets/COPYING",
     "lib/assets/LICENSE",
     "lib/assets/README.md",
     "lib/assets/tiny_mce/plugins/splitblockquote/editor_plugin.js",
     "lib/assets/tiny_mce/plugins/splitblockquote/editor_plugin_src.js",
     "lib/tinymce_splitblockquote.rb",
     "tinymce_splitblockquote.gemspec"
  ]
  s.homepage = %q{http://github.com/Tauop/tinymce_splitblockquote}
  s.rdoc_options = ["--charset=UTF-8", "--exclude=lib/assets"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A tiny_mce gem's plugin installing my splitblockquote plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tiny_mce>, [">= 0.1.4"])
    else
      s.add_dependency(%q<tiny_mce>, [">= 0.1.4"])
    end
  else
    s.add_dependency(%q<tiny_mce>, [">= 0.1.4"])
  end
end

