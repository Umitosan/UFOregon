class Ufo < ActiveRecord::Base

end


module Keys
  def Keys.js_base
    'AIzaSyAw9YqBwAtZgoHPz8qfM-1BIlXB9bgyfSU'
  end
end



class City
  ############
  class << self  # class level attr_accessor syntax for the Class variables only
    attr_accessor( :current_city, :all )
  end
  @@all = []
  @@current_city = nil
  ############

  attr_accessor(:name,:lat,:lng,:reports,:total)  # City instance level accessor

  def initialize()
    @name = ""
    @lat = 0
    @lng = 0
    @reports = []
    @total = 0
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
