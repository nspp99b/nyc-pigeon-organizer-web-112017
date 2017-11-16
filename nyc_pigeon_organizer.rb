def nyc_pigeon_organizer(data)
  organized = {}
  data[:gender].each do |gender_key, bird_array|
    bird_array.each do |bird_name|
      organized[bird_name] = {}
    end
  end
  data.each do |prop, prop_value_hash|
    prop_value_hash.each do |prop_value, bird_array|
      bird_array.each do |bird_name|
        if organized[bird_name][prop]
          organized[bird_name][prop].push(prop_value.to_s)
        else
          organized[bird_name][prop] = [prop_value.to_s]
        end
      end
    end
  end
  organized
end
