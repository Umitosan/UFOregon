require "bundler/setup"
require 'pry'

Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get("/") do
  erb(:index)
end

get('/ruby_data') do
  # data to be passed to javascript
  if (City.get_current_city == nil)
      [{
        nam: "Bend",
        lat: 44.06,
        lng: -121.32,
        rep: "no reports",
        tot: 1
      }].to_json
  elsif (City.get_current_city == "many")
      cities_arr = []
      City.get_all.each do |city_obj|
          city_data_hash = {
            nam: city_obj.get_name,
            lat: city_obj.get_lat,
            lng: city_obj.get_lng,
            rep: city_obj.get_rep,
            tot: city_obj.get_total
          }
          cities_arr.push(city_data_hash)
      end
      cities_arr.to_json
  else
      [{
        nam: City.get_current_city.get_name,
        lat: City.get_current_city.get_lat,
        lng: City.get_current_city.get_lng,
        rep: City.get_current_city.get_rep,
        tot: City.get_current_city.get_total
      }].to_json
  end
end


post('/get_city_name') do
  city_name = params.fetch('city_name')
  if City.validate_name?(City.caseIt(city_name))
    new_city = City.new()
    new_city.save_name(City.caseIt(city_name))
    found_rows_arr = Ufo.find_by_sql("SELECT * FROM ufos WHERE city = '#{new_city.get_name}';")
    new_city.save_total(found_rows_arr.count)
    # returns a single record for city to display correct map marker
    single_city_record = Ufo.find_by(city: new_city.get_name)
    new_city.save_lat(single_city_record['latitude'])
    new_city.save_lng(single_city_record['longitude'])
    # extract all the sighting reports
    summaries = []
    result = Ufo.where(["city = ?", new_city.get_name])
    result.each do |row|
      summaries.push(row['summary'])
    end
    new_city.save_rep(summaries)
    City.save_current_city(new_city)
    erb(:index)
  else
    City.get_current_city = nil
    erb(:errors)
  end
end


post('/get_all_cities') do
  # set the context to "many" so the correct data is picked up from '/ruby_data' path
  City.save_current_city("many")
  everything = Ufo.find_by_sql("SELECT * FROM ufos LIMIT 100;")
  # find all unique city names in the database
  all_names_arr = []
  everything.each do |row_obj|
    all_names_arr.push(row_obj['city'])
  end
  all_names_arr.uniq!

  # create a new City object for each unique city name and save all the info for that city
  cities_arr = []
  all_names_arr.each do |city_name|
    single_city_record = Ufo.find_by(city: city_name)
    new_city = City.new()
    new_city.save_name(single_city_record['city'])
    new_city.save_lat(single_city_record['latitude'])
    new_city.save_lng(single_city_record['longitude'])
    # FIND and SAVE all summeries
    summaries = []
    result = Ufo.where(["city = ?", new_city.get_name])
    result.each do |row|
      summaries.push(row['summary'])
    end
    new_city.save_rep(summaries)
    # FIND and SAVE total
    new_city.save_total(summaries.length)
    cities_arr.push(new_city)
  end
  City.save_to_all(cities_arr)
  erb(:index)
end

get '/end' do
  erb :end
end
