require "mirei/version"
require 'yaml'

module Mirei
  def self.regulation(number)
    Mirei::Regulation.new(number)
  end

  class Regulation
    def initialize(number)
      regulation = find_regulation(number)

      @number = number
      @content = regulation['content']
      @violator = regulation['violator']
      @episode = regulation['episode']
    end

    attr_reader :number, :content, :violator, :episode

    private

    def find_regulation(number)
      # OPTIMIZE: Yaml lazy load.
      @regulation_list ||= YAML.load_file(File.expand_path('../../config/settings.yml', __FILE__))

      # TODO: Error handling.
      @regulation_list.dig('regulations', number)
    end
  end
end
