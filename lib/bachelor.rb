require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    return contestant["name"].split.first if contestant["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
        return contestant["name"] if contestant["occupation"] == occupation
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  c = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        c = c + 1
      end
    end
  end
  c
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  age_total = 0
  data[season].each do |contestant|
    age_total = age_total + contestant["age"].to_f
    count = count + 1
  end
  (age_total / count).round
end
