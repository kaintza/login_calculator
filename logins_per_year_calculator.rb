class LoginsPerYearCalculator
  #This class will calculate the logins per year for each person in an array
  def initialize(people, logins)
    @people = people
    @logins = logins
  end

  def calculate
    sorted_logins_with_years = @logins.each do |id, dates|
      dates.map! do |date|
        date.year
      end.sort!
    end

    counted_logins_per_years = sorted_logins_with_years.each do |id,years|
      counts = Hash.new(0)
      sorted_logins_with_years[id].each {|year| counts[year] += 1 }
      sorted_logins_with_years[id] = counts
    end

    sorted_counted_logins = counted_logins_per_years.sort_by {|id, year| @people[id]}.to_h
    counted_logins_with_name = sorted_counted_logins.transform_keys do |id|
      @people.select do |person| person[0] == id
      end.first[1]
    end
  end
end

