# frozen_string_literal: true

require 'oci8'
require 'ruby-plsql'

class Uppercase
  def initialize
    plsql.connection = OCI8.new('ruby/ruby@//localhost:49161/XE')
  end

  def upper(text)
    plsql.upper(text)
  end
end
