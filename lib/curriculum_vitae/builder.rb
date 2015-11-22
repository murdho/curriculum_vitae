module CurriculumVitae
  class Builder
    attr_reader :structure

    def build(&block)
      fail ArgumentError, 'block is required' unless block_given?

      @result = {}
      instance_eval(&block)
      @result
    end

    def item(stuff)
      @result[:items] ||= []
      @result[:items] << stuff
    end

    def add_to_result(name, contents)
      if contents.is_a?(Proc)
        original_result = @result
        @result = temp_result = {}
        contents.call
        @result = original_result
        @result[name] = temp_result
      else
        @result[name] = contents
      end
    end

    def method_missing(method, *args, &block)
      data = block_given? ? block : args.first
      add_to_result(method, data)
    end
  end
end
