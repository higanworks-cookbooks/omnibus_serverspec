#require 'ohai'
#
#OHAI=Ohai::System.new
#OHAI.all_plugins

$:.concat(
  Dir.glob('/opt/serverspec/embedded/lib/ruby/gems/1.9.1/gems/*/lib')
)

require 'serverspec'
