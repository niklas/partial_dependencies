require "partial_dependencies/version"

module PartialDependencies
  require "lib/partial_dependencies/railtie" if defined?(Rails)
end
