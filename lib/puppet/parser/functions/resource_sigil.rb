# Many thanks to finch for basically writing this function
module Puppet::Parser::Functions
  newfunction(:resource_sigil, :type => :rvalue) do |args|
    return (scope.resource.virtual? ? '@' : (scope.resource.exported? ? '@@' : ''))
  end
end

