class LoginCalculator
  def initialize(people, logins)
    @people = people
    @logins = logins
  end

  def calculate
    logins = @logins.each {|index, years| years.map! {|year| year.year}.sort!}

    logins.each do |k,v|
      counts = Hash.new(0)
      logins[k].each {|y| counts[y] += 1 }
      logins[k] = counts
    end

    logins = logins.sort_by {|k, v| @people[k]}.to_h
    logins.transform_keys{ |key| key = @people.select {|p| p[0] == key}.first[1].to_sym }
  end
end


#login_calculator = LoginCalculator.new(people, logins)

#puts login_calculator.calculate

#begin
#This is a small ruby exercise.
#    In the logins.rb there is a people array with [id, name], and you have a logins hash with the keys as the ids of the people.
#    Your goal is to print a nested hash on the screen where you count logins per year for each person.
#        The end result should be similar to this:
#                                                {
 #                                                   "matayo"=>{1973=>1, 1980=>1, 2010=>1, 2003=>1, 1976=>1, 2005=>1, 2011=>1, 1989=>1},
  #"#{                                                  "nico"=>{1976=>1, 1988=>1, 2005=>1, 1980=>1, 1983=>1, 1972=>2, 1987=>1},
   #"                                                 "angelo"=>{1982=>1, 2006=>1, 1988=>1, 1992=>2, 2016=>1, 1995=>2},
     #                                               "luca"=>{1992=>1, 1970=>1, 1972=>1, 1978=>1, 1976=>1, 2004=>1, 2009=>1, 2011=>1}},

