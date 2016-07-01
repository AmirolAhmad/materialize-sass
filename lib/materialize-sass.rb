require 'materialize-sass/version'
module Materialize
  class << self
    # Inspired by Kaminari
    def load!
      if rails?
        register_rails_engine
      end
      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def fonts_path
      File.join assets_path, 'fonts'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path
      ::Sass::Script::Number.precision = [8, ::Sass::Script::Number.precision].max
    end

    def register_rails_engine
      require 'materialize-sass/engine'
    end
  end
end

Materialize.load!
