require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays (holiday_supplies, supply)
  holiday_supplies.map do |season, occasion|
    if season == :winter
   occasion.map do |key, value|
     value << "Balloons"
    end
    end
  end
  return holiday_supplies
end

def add_supply_to_memorial_day (holiday_supplies, supply)
   holiday_supplies.map do |season, occasion|
     occasion.map do |key, value|
       if key == :memorial_day
         value << supply
       end
     end
   end
   return holiday_supplies
end

def add_new_holiday_with_supplies (holiday_supplies, season, ocassion, supply)
  holiday_supplies.map do |time, festivity|
    if time == :fall
      holiday_supplies[season][ocassion] = supply
    end
  end
  return holiday_supplies
end

def all_winter_holiday_supplies (holiday_supplies)
  new_array = []
  holiday_supplies.map do |time, festivity|
    if time == :winter
    festivity.map do |key, value|
      new_array << value
    end
  end
end
return new_array.flatten
end

def all_supplies_in_holidays (holiday_supplies)
  holiday_supplies.each do |season, festivity|
      puts season.to_s.capitalize! + ":"
      festivity.each do |key, value|
        phrase = key.to_s.split("_").each do |word|
          word.capitalize!
        end.join(" ")
        puts "  " + phrase + ": " + value.join(", ")
      end
  end
end

def all_holidays_with_bbq (holiday_supplies)
  new_symbols = []
  holiday_supplies.map do |season, festivity|
    festivity.each do |key, value|
      if value.include?("BBQ") == true
        new_symbols << key
      end
    end
  end
  return new_symbols
end

