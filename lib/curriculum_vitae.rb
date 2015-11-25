require_relative 'curriculum_vitae/version'
require_relative 'curriculum_vitae/builder'

module CurriculumVitae
  def self.build(&block)
    Builder.build(&block)
  end
end
