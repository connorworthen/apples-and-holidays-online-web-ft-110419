require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

end

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash[:winter].each { |key, value| holiday_hash[:winter][key] << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
      #1st capitalize the season names
      puts "#{season.to_s.capitalize!}:"
      #2nd go down to holiday's names hash
      holiday.each do |name, supply|
        new_array = []
        array = name.to_s.split("_#split all the words with _
        #capitalize the names
        array.each { |word| new_array << word.capitalize! }
        #join separate words with " "
        name = new_array.join(" ")
        #turn array to string with join
        supply = supply.join(", ")
        puts "  #{name}: #{supply}"
      end
   end
end


def all_holidays_with_bbq(holiday_hash)
  def all_holidays_with_bbq(holiday_hash)
   array = []
   holiday_hash.each do |season, holiday|
      holiday.each do |name, supply|
      if supply.include?("BBQ")
         array << name
      end
      end
   end
   array
end
