# frozen_string_literal: true

require 'spec_helper'
require_relative '../uppercase'

RSpec.describe Uppercase do
  describe '#upper' do
    it 'upper cases any text passed in' do
      expect(described_class.new.upper('test')).to eq 'TEST'
    end
  end
end
