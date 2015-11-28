module CurriculumVitae
  class Builder
    attr_reader :result

    def self.build(&block)
      Builder.new.build(&block)
    end

    def build(&block)
      fail ArgumentError, 'block is required' unless block_given?

      @result = {}
      instance_eval(&block)
      @result
    end

    private

    def method_missing(method, *args, &block)
      data = block_given? ? block : args.first
      add_to_result(method, data)
    end

    def add_to_result(name, contents)
      @result[name] = begin
        contents.is_a?(Proc) ? with_sub_result { contents.call } : contents
      end
    end

    def with_sub_result
      main_result = @result
      @result = sub_result = {}
      yield
      @result = main_result
      sub_result
    end

    def item(stuff)
      @result[:items] ||= []
      @result[:items] << stuff
    end
  end
end
