# Bennett Hamilton
# This is a simple example of a singleton class. The Sky class is a singleton

require 'singleton'

# ref: https://www.rubyguides.com/2018/05/singleton-pattern-in-ruby/
class Sky
  include Singleton
  @@instance_count = 0

  def initialize
    @@instance_count += 1
    @id = @@instance_count
  end

  def to_s
    "I am sky object #{@id} of #{@@instance_count} total instances."
  end

  def self.instance_count
    @@instance_count
  end
  
end


sky = Sky.instance
puts sky

another_sky = Sky.instance
puts another_sky

blood_red_sky = Sky.instance
puts blood_red_sky

pink_sky = Sky.instance
puts pink_sky
