class Sky

  @@instance_count = 0

  def initialize
    @@instance_count += 1
    @id = @@instance_count
  end

  def to_s
    "I am sky object #{@id} of #{@@instance_count} total instances."
  end
end


sky = Sky.new
puts sky

another_sky = Sky.new
puts another_sky

blood_red_sky = Sky.new
puts blood_red_sky

pink_sky = Sky.new
puts pink_sky
