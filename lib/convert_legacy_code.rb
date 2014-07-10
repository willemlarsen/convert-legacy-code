def switcharoo(object)
  object.invert
end

def break_up_and_reassign(object)
  new_object = Hash.new 
  object.each do |key, value|
	  key.each do |element|
	  	new_object[element] = value
	  end
  end
  new_object
end

def convert_legacy_code(hash)
	hash = switcharoo(hash)
	newer_hash = break_up_and_reassign(hash)
	newer_hash
end



