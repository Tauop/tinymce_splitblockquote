require 'tiny_mce'

TinyMCE.install_or_update_tinymce

class TinyMCESplitBlockquote < TinyMCE::Plugin
  self.assets_path = File.join(File.dirname(__FILE__), 'assets/tiny_mce')
end

TinyMCESplitBlockquote.install
