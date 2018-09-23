class Ufo < ActiveRecord::Base

end


module Keys
  def Keys.js_base
    'AIzaSyCpF8nxj0hnTYxDadNYGHw6AHP99BSTkzM'
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
    name2 = name.split(" ").map { |word| word.downcase.capitalize }
    name2.join(" ")
  end

  def City.validate_name?(name)
    valid = nil
    if (name !~ /[^a-zA-Z\s]/) # (^) denote start of line, any letter, include spaces (\s)
      valid = true
    else
      valid = false
    end
    valid
  end

end
