module CurriculumVitae
  class Builder
    attr_reader :structure

    def build(&block)
      fail ArgumentError, 'block is required' unless block_given?

      @structure = {}
      @active = @structure

      instance_eval(&block)

      @structure
    end

    def report(name, contents)
      puts <<-RPT

@structure: #{@structure.inspect}
@active:    #{@active.inspect}
name:       #{name.inspect}
contents:   #{contents.inspect}

      RPT
    end

    def add_to_structure(name, contents)
      #report(name, contents)
      if contents.is_a?(Proc)
        @active[name] ||= {}
        @old_active = @active
        @active = @active[name]
        contents.call
        @active = @old_active
      else
        @active[name] = contents
      end
      #require 'pry'; binding.pry
    end

    def method_missing(method, *args, &block)
      contents = block_given? ? block : args.first
      add_to_structure(method, contents)
    end
  end
end
