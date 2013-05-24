require 'partial_dependencies'
#
# Rake task will scan all the views and partials to generate a linkage graph.
# Options to select output file type and "used", "unused", or "all" partials
# listed.
#
# rake partial_dependencies:generate_picture
#
# Defaults to an output file type of .png (other available types are unknown).
# Defaults to graphing only used partials don't know what other types are available
# 
# rake partial_dependencies:generate_picture[<file_type>,<view_set>]
#
# Note that no spaces are allowed. <file_type> works at least for png. Allowed
# values for <view_set> are used, unused, and all.
#

namespace :partial_dependencies do
  desc "Generate a graphical (PNG) representation of the partial dependencies"
  task :generate_picture, :file_type, :view_set do |t, args|
    pd = PartialDependencies::Graph.new
    pd.dot(args.file_type || "png", args.view_set || "used")
  end
end
