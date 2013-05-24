require 'partial_dependencies'
require 'rails'
module PartialDependencies
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../../../tasks/partial_dependencies.rake', __FILE__)
    end
  end
end
