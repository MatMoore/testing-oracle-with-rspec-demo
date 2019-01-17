# frozen_string_literal: true

require 'oci8'
require 'ruby-plsql'

class Uppercase
  def initialize
    plsql.connection = OCI8.new('system/oracle@//localhost:49161/XE')
  end

  def upper(text)
    plsql.upper(text)
  end
end
