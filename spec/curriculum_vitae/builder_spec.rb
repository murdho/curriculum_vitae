require 'spec_helper'

describe CurriculumVitae::Builder do
  subject(:builder) { described_class.new }

  describe '.build' do
    subject!(:builder) { described_class.new }

    it 'creates an instance and passes block to it' do
      expect(described_class).to receive(:new) { builder }
      expect(builder).to receive(:build).and_call_original

      described_class.build {}

      expect(builder.result).to eq({})
    end
  end

  describe '#build' do
    context 'when called without block' do
      it 'requires block' do
        expect { builder.build }.to raise_error ArgumentError, 'block is required'
      end
    end

    context 'when called with block' do
      let(:result) { builder.result }

      def build(&block)
        builder.build(&block)
      end

      it 'handles regular attributes' do
        build do
          name  'Tom'
          email 'hello@world.com'
        end

        expect(result).to eq(
          name:  'Tom',
          email: 'hello@world.com'
        )
      end

      it 'handles nested blocks' do
        build { one { two { three {} } } }

        expect(result).to eq(
          one: { two: { three: {} } }
        )
      end

      it 'handles nested blocks with attributes and block' do
        build do
          contact do
            phones do
              home '+123 456 789'
              work '+234 567 890'
            end
            email 'hello@world.com'
          end
        end

        expect(result).to eq(
          contact: {
            phones: {
              home: '+123 456 789',
              work: '+234 567 890'
            },
            email: 'hello@world.com'
          }
        )
      end

      it 'handles multiple item list' do
        build do
          item 'Ruby'
          item 'Clojure'
          item 'Haskell'
        end

        expect(result).to eq(items: %w(Ruby Clojure Haskell))
      end
    end
  end
end
