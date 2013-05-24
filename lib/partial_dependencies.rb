require "partial_dependencies/version"

module PartialDependencies
  require "partial_dependencies/railtie" if defined?(Rails)
  require "partial_dependencies/graph"
end
