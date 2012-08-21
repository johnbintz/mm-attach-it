class Storage

  def transform(style_value = nil, filename = nil)
  end

  private
  def resize(style_value = nil, filename = nil)
    raise StandardError.new("no resizing")
  end

  def crop(new_width = nil, new_height = nil, filename = nil)
    raise StandardError.new("no cropping")
  end

  def resize_before_cropping(img = nil, new_width = nil, new_height = nil)
    width = img.columns
    height = img.rows

    if width > height
      "x#{new_height}>"
    elsif (width < height)
      "#{new_width.to_s}x>"
    else
      "#{new_width}x#{new_height}>"
    end
  end

end
