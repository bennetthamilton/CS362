class KitchenSink
  # Don't add new parameters to or change the return type of
  # triangle_area!

  
  def triangle_area
    base = get_triangle_base
    height = get_triangle_height

    area = 0.5 * base * height;

    output(area)
  end

  def get_triangle_base
    print 'Enter base: '
    base = gets.to_i
    base
  end

  def get_triangle_height
    print 'Enter height: '
    height = gets.to_i
    height
  end

  def get_output_string(area)
    "The area is #{area}"
  end

  def output(area)
    puts get_output_string(area)
  end

end