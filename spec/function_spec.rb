# frozen_string_literal: true

require 'oci8'
require 'ruby-plsql'
require 'spec_helper'

RSpec.describe 'Functions' do
  before do
    plsql.connection = OCI8.new('ruby/ruby@//localhost:49161/XE')
  end

  describe '#betwnstr' do
    it 'returns a substring based on the indexes provided' do
      expect(plsql.betwnstr('Test', 2, 3)).to eq 'es'
    end
  end
end
