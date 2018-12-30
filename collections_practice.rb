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

def first_wa(array)
  array.each do |word|
    if word.match(/^wa/)
      return word
    end
  end
end

def remove_non_strings(array)
  array.each do |el|
    if !(el.is_a String)
      array.delete(el)
    end
  end
end

def merge_data(arg1, arg2)

end

def find_cool(arg)

end

def organize_schools(schools)

end
