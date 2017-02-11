# your code goes here
def begins_with_r(arr)
  arr.each do |word|
    return false unless word.split(//).first === "r"
  end
  true
end

def contain_a(arr)
  arr.select do |word|
    word.include?("a")
  end
end

def first_wa(arr)
  arr.find do |word|
    word.slice(0..1) == "wa"
  end
end

def remove_non_strings(arr)
  arr.select {|x| x.class == String}
end

def count_elements(arr)
  new_arr = arr.uniq
  new_arr.each do |hash|
    hash.merge!({count: arr.count(hash)})
  end
  new_arr
end

def merge_data(key,data)
  key.each do |key_hash|
    key_hash.merge!(data[0][key_hash[:first_name]])
  end
  key
end

def find_cool(cool)
    output = []
    cool.each do |hash|
      if hash[:temperature] == "cool"
        output << hash
      end
    end
    output
  end

def organize_schools(schools)
  organize_schools = {}
  schools.each do |school, location_hash|
    if organize_schools.has_key?(location_hash[:location])
      organize_schools[location_hash[:location]] << school
    else
      organize_schools[location_hash[:location]] = [school]
    end
  end
  organize_schools
end
