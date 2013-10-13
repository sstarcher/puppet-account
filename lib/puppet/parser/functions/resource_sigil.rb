# Many thanks to finch for basically writing this function
module Puppet::Parser::Functions
  newfunction(:resource_sigil, :type => :rvalue) do |args|
    return '@'  if resource.virtual?
    return '@@' if resource.exported?
    return ''
  end
end

