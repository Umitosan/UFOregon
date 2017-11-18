require "bundler/setup"

Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get("/") do
  erb(:index)
end

# this path is used soley to pass data gathered from the database using ruby to the Javascript side
get('/ruby_data') do
  if (City.current_city == nil)
      [{
        nam: "Bend",
        lat: 44.06,
        lng: -121.32,
        rep: "no reports",
        tot: 1
      }].to_json
  elsif (City.current_city == "notfound")
    # don't return a marker = blank map
  elsif (City.current_city == "many")
      cities_arr = []
      City.all.each do |city_obj|
          city_data_hash = {
            nam: city_obj.name,
            lat: city_obj.lat,
            lng: city_obj.lng,
            rep: city_obj.reports,
            tot: city_obj.total
          }
          cities_arr.push(city_data_hash)
      end
      cities_arr.to_json
  else
      [{
        nam: City.current_city.name,
        lat: City.current_city.lat,
        lng: City.current_city.lng,
        rep: City.current_city.reports,
        tot: City.current_city.total
      }].to_json
  end
end


post('/get_city_name') do

  city_name = City.caseIt(params.fetch('city_name'))
  # string must validate && city lookup must find something
  if ( City.validate_name?(city_name) && (Ufo.find_by(city: city_name) != nil) )
    new_city = City.new()
    new_city.name = city_name
    found_rows_arr = Ufo.find_by_sql("SELECT * FROM ufos WHERE city = '#{new_city.name}';")
    new_city.total = found_rows_arr.count
    # returns a single record for city to display correct map marker
    single_city_record = Ufo.find_by(city: new_city.name)
    new_city.lat = single_city_record['latitude']
    new_city.lng = single_city_record['longitude']
    # extract all the sighting reports
    summaries = []
    result = Ufo.where(["city = ?", new_city.name])
    result.each do |row|
      summaries.push(row['summary'])
    end
    new_city.reports = summaries
    City.current_city = new_city
    erb(:index)
  else
    City.current_city = "notfound"
    erb(:index)
  end
end


post('/get_all_cities') do
  # set the context to "many" so the correct data is picked up from '/ruby_data' path
  City.current_city ="many"
  everything = Ufo.find_by_sql("SELECT * FROM ufos ;")
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
    new_city.name = single_city_record['city']
    new_city.lat = single_city_record['latitude']
    new_city.lng = single_city_record['longitude']
    # FIND and SAVE all summeries
    summaries = []
    result = Ufo.where(["city = ?", new_city.name])
    result.each do |row|
      summaries.push(row['summary'])
    end
    new_city.reports = summaries
    # FIND and SAVE total
    new_city.total = summaries.length
    cities_arr.push(new_city)
  end
  City.all = cities_arr
  erb(:index)
end

get '/end' do
  erb :end
end
