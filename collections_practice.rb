def begins_with_r(array)
  array.each do |word|
    if !word.match(/^r/)
      return false
    end
  end
  true
end

def contain_a(array)
  array.map!.select do |el|
    el.include?("a")
  end
end

def begins_with_r(array)
  array.each do |word|
    if !word.match(/^wa/)
      return false
    end
  end
  true
end
