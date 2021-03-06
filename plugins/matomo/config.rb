require 'yaml'

module Matomo
  # Configuration class for the Matomo box
  class Config
    def initialize
      @data = {}
    end

    def get(key)
      @data[key]
    end

    def parse_file(config_file)
      parsed = YAML.load_file(config_file)

      @data.merge!(parsed) if parsed.is_a?(Hash)
    end
  end
end
