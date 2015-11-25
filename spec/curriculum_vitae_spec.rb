require 'spec_helper'

describe CurriculumVitae do
  it 'has a version number' do
    expect(CurriculumVitae::VERSION).not_to be nil
  end

  context '.build' do
    it 'passes block to `Builder.build`' do
      expect(CurriculumVitae::Builder).to receive(:build).and_call_original

      result = subject.build do
        code 'Red'
      end

      expect(result).to eq(code: 'Red')
    end
  end
end
