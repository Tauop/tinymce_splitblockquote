Gem::Specification.new do |s|
  s.name = "tinymce_splitblockquote"
  s.version = "0.0.1"
  s.authors = ["Patrick Guiran"]
  s.email = "pguiran@linagora.com"
  s.homepage = "http://github.com/tauop/tinymce_splitblockquote"

  s.summary = "A tiny_mce gem's plugin installing my splitblockquote plugin."
  s.description = "This plugin splits (nested) blockquotes when the user try to break lines into them."

  s.files = Dir["lib/**/*", "[A-Z]*", "tinymce_splitblockquote.gemspec"]
  s.require_path = "lib"

  s.extra_rdoc_files = Dir["*.rdoc"]
  s.rdoc_options = ["--charset=UTF-8", "--exclude=lib/assets"]
end
