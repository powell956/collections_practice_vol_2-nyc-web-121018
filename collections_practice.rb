require 'pry'

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
  new_arr = []
  array.each.with_index do |el, i|
    if !(el.is_a? String)
      next
    else
      new_arr << el
    end
    # binding.pry
  end
  new_arr
end

def count_elements(arg)
  arg.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
      arg.each do |hash|
        if hash[:name] == name
          original_hash[:count] += 1
        end
      end
  end.uniq
end


def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end


def find_cool(arg)
  arg.select do |el|
    el[:temperature] == "cool"
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
  location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
