#
# Copyright (c) 2010 Linagora
# Patrick Guiran <pguiran@linagora.com>
#
# This file is part of tinymce_splitblockquote
#
# TinyMCE SplitBlockquote is free software, you can redistribute
# it and/or modify it under the terms of the GNU General Public
# License as published by the Free Software Foundation; either
# version 2 of the License, or (at your option) any later version.
#
# TinyMCE SplitBlockquote is distributed in the hope that it will
# be useful, but WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

require 'tiny_mce'

unless defined?(TinyMCE::Plugin)
  # as tiny_mce 0.1.5 isn't released yet, and only tiny_mce 0.1.4
  # is on rubygem, we defined the plugin system
  module TinyMCE
    # copied from http://github.com/kete/tiny_mce/commit/16ab9054888ea39eead897226d72b3eaf6c20578
    class Plugin
      cattr_accessor :assets_path
      def self.install
        return unless File.directory?(self.assets_path)
        require 'fileutils'

        dest = File.join(Rails.root.to_s, 'public', 'javascripts' )
        dest = File.join(dest, 'tiny_mce', 'plugins', 'splitblockquote', 'editor_plugin_src.js' )
        if File.exist? dest
          orig = File.join(self.assets_path, 'plugins', 'splitblockquote', 'editor_plugin_src.js' )
          return if FileUtils.identical?( orig, dest)
        end
        puts "Installing #{self.name} plugin assets from #{self.assets_path}"
        FileUtils.cp_r "#{self.assets_path}/.", File.join(Rails.root.to_s, 'public', 'javascripts', 'tiny_mce')
      end
    end
  end
end

# inspired from http://github.com/kete/tiny_mce_plugin_example
TinyMCE.install_or_update_tinymce

class TinyMCESplitBlockquote < TinyMCE::Plugin
  self.assets_path = File.join(File.dirname(__FILE__), 'assets/tiny_mce')
end

TinyMCESplitBlockquote.install
