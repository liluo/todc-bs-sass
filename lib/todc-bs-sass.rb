module Todc
  module BS
    module Sass
      class << self

        def load!
          if rails?
            register_rails_engine
          end

          if compass?
            register_compass_extension
          end

        end

        # Paths
        def gem_path
          @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
        end

        def stylesheets_path
          File.join assets_path, 'stylesheets'
        end

        def images_path
          File.join assets_path, 'images'
        end

        def assets_path
          @assets_path ||= File.join gem_path, 'vendor', 'assets'
        end

        # Environment detection helpers
        def asset_pipeline?
          defined?(::Sprockets)
        end

        def compass?
          defined?(::Compass)
        end

        def rails?
          defined?(::Rails)
        end


        private

        def register_compass_extension
          ::Compass::Frameworks.register('todc-bs-sass', :path                  => gem_path, 
                                                         :stylesheets_directory => stylesheets_path)
        end

        def register_rails_engine
          require 'todc-bs-sass/engine'
        end
      end
    end
  end
end


Todc::BS::Sass.load!
