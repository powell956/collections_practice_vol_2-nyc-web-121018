def begins_with_r(array)
  array.each do |word|
    if !word.match(/^r/)
      return false
    end
  end
  true
end

def contain_a(array)
  array.map.select.include?("a")
end