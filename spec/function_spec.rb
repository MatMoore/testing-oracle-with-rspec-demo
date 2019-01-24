# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Functions' do
  describe '#betwnstr' do
    it 'returns a substring based on the indexes provided' do
      expect(plsql.betwnstr('Test', 2, 3)).to eq 'es'
    end
  end
end
