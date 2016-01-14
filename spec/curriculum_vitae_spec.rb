require 'spec_helper'

describe CurriculumVitae do
  it 'has a version number' do
    expect(CurriculumVitae::VERSION).not_to be nil
  end

  context '.build' do
    let(:blokk) { -> { infinite 'joy' } }

    it 'passes block to `Builder.build`' do
      expect(CurriculumVitae::Builder).to receive(:build) do |_, &block|
        expect(blokk).to be(block)
      end

      subject.build(&blokk)
    end
  end
end
