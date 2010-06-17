=begin

This file is part of the shikashi-shikashi project, http://github.com/tario/shikashi-shikashi

Copyright (c) 2009-2010 Roberto Dario Seminara <robertodarioseminara@gmail.com>

shikashi-shikashi is free software: you can redistribute it and/or modify
it under the terms of the gnu general public license as published by
the free software foundation, either version 3 of the license, or
(at your option) any later version.

shikashi-shikashi is distributed in the hope that it will be useful,
but without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.  see the
gnu general public license for more details.

you should have received a copy of the gnu general public license
along with shikashi-shikashi.  if not, see <http://www.gnu.org/licenses/>.

=end
module ShikashiShikashi
  class SubPrivileges < Shikashi::Privileges
    def initialize( sub_privileges, super_privileges)
      @sub_privileges = @sub_privileges
      @super_privileges = @super_privileges
    end

    def handle_redirection(*args)
      # TODO: emulation of redirections
      nil
    end
#
# Implementation of allow that ask to the super and sub privileges (both must be true)
#
    def allow?(*args)
      # ask first to the super_privileges allows the call
      unless @super_privileges.allow?(*args)
        return false
      end

      unless @sub_privileges.allow?(*args)
        return false
      end

      return true
    end
  end
end