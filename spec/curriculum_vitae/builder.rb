require 'spec_helper'

describe CurriculumVitae::Builder do
  describe '#build' do
    context 'when called without block' do
      it 'requires block' do
        expect { subject.build }.to raise_error ArgumentError, 'block is required'
      end
    end

    context 'when called with block' do
      #let(:return_value) do
        #subject.build do
          #name 'Hello World'
          #contact do
            #phones do
              #home '+123 456 789'
              #work '+234 567 890'
            #end
            #email 'hello@world.com'
          #end
          #experience do
            #specific_experience do
              #even_more_specific do
                #item 'very specific #1'
                #item 'very specific #2'
              #end
            #end
          #end
        #end
      #end

      #it 'builds hash from the block' do
        #expect(return_value).to eq(
          #name: 'Hello World',
          #contact: {
            #phones: {
              #home: '+123 456 789',
              #work: '+234 567 890'
            #},
            #email: 'hello@world.com'
          #},
          #experience: {
            #specific_experience: {
              #even_more_specific: {
                #items: [
                  #'very specific #1',
                  #'very specific #2'
                #]
              #}
            #}
          #}
        #)
      #end
      let(:real_output) do
        subject.build do
          eval File.read('./spec/curriculum_vitae/builder/input.rb')
        end
      end

      let(:expected_output) do
        eval File.read('./spec/curriculum_vitae/builder/output.rb')
      end

      it 'build hash from the block 2' do
        expect(real_output).to eq expected_output
      end
    end
  end
end
