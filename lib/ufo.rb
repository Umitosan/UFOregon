class Ufo < ActiveRecord::Base

end


module Keys
  def Keys.js_base
    'AIzaSyAw9YqBwAtZgoHPz8qfM-1BIlXB9bgyfSU'
  end
end



class City
  class << self  # class level attr_accessor syntax for the Class variables only
    attr_accessor( :current_city, :all )
  end
  @@all = []
  @@current_city = nil

  def initialize()
    @name = ""
    @lat = 0
    @lng = 0
    @reports = []
    @total = 0
  end

  def save_name(name)
    @name = name
  end
  def get_name
    @name
  end

  def save_lat(num)
    @lat = num
  end
  def get_lat
    @lat
  end
  def save_lng(num)
    @lng = num
  end
  def get_lng
    @lng
  end

  def save_rep(arr)
    @reports = arr
  end
  def get_rep
    @reports
  end

  def save_total(num)
    @total = num
  end
  def get_total
    @total
  end

  def City.caseIt(name)
    name = name.downcase.capitalize
    name
  end

  def City.validate_name?(name)
    valid = nil
    if (name !~ /[^a-zA-Z]/i)
      valid = true
    else
      valid = false
    end
    valid
  end

end
