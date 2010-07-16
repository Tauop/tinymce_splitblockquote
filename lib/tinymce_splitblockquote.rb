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

TinyMCE.install_or_update_tinymce

class TinyMCESplitBlockquote < TinyMCE::Plugin
  self.assets_path = File.join(File.dirname(__FILE__), 'assets/tiny_mce')
end

TinyMCESplitBlockquote.install
