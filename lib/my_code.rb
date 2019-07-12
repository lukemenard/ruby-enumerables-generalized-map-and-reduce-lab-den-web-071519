def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new << yield(source_array[i])
    i += 1
  end
  return new
end

def reduce(source_array, starting_value = 0)
  i = 0
  new_value = 0
  
  if source_array.include?(nil)
    return true
  elsif source_array.any? == false
    return false
    
  elsif source_array.all? == false
    return false


  
  else
    while i == 0 do
      new_value = yield(source_array[i], starting_value)
      i += 1
    end
    while i > 0 && i < source_array.length do
      new_value += yield(source_array[i], starting_value)
      new_value = new_value - starting_value
      i += 1
    end
  end

  return new_value
end