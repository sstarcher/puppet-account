# Many thanks to finch for basically writing this function
module Puppet::Parser::Functions
  newfunction(:resource_sigil, :type => :rvalue) do |args|
    if resource.virtual?
      '@'
    elsif resource.exported?
      '@@'
    else
      ''
    end
  end
end

