def get_first_name_of_season_winner(data, season)
  data.each do |seasons, info|
    if seasons == season
      info.each do |data, value|
        if data["status"] == "Winner"
          first_name = data["name"].split(" ")
          return first_name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, info|
      info.each do |data, value|
        if data["occupation"] == occupation
          return data["name"]
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = []
  data.each do |seasons, info|
      info.each do |data, value|
        if data["hometown"] == hometown
          hometown_count << data["name"]
        end
      end
    end
  return hometown_count.size
end

def get_occupation(data, hometown)
  hometown_count = []
  data.each do |seasons, info|
      info.each do |data, value|
        if data["hometown"] == hometown
          hometown_count << data["occupation"]
        end
      end
    end
  return hometown_count[0]
end

def get_average_age_for_season(data, season)
  average_age = []
  data.each do |seasons, info|
    if seasons == season
      info.each do |data, value|
          average_age << data["age"].to_f
        end
      end
    end
    sum = average_age.inject(0){|sum, x| sum + x}
    average = sum/average_age.size
    return average.round
end
