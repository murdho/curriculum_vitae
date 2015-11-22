require 'spec_helper'

describe CurriculumVitae::Builder do
  describe '#build' do
    context 'when called without block' do
      it 'requires block' do
        expect { subject.build }.to raise_error ArgumentError, 'block is required'
      end
    end

    context 'when called with block' do
      let(:return_value) do
        subject.build do
          name 'Hello World'
          contact do
            phones do
              home '+123 456 789'
              work '+234 567 890'
            end
            email 'hello@world.com'
          end
        end
      end

      it 'builds hash from the block' do
        expect(return_value).to eq({
          name: 'Hello World',
          contact: {
            phones: {
              home: '+123 456 789',
              work: '+234 567 890'
            },
            email: 'hello@world.com'
          }
        })
      end
    end
  end

end
