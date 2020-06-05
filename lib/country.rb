class Country
#keep track of all contries
attr_accessor :name, :NewDeaths, :TotalRecovered, :TotalDeaths
@@all = []
def initialize(name:)
     @name = name
    @@all << self 
end

def self.all
    @@all
end



def self.find_by_name(country_name)

    Country.all.each do |country|

        if (country.name ==country_name) 
            puts "#{country.name}"
            puts "#{country.NewDeaths}"
            puts ["TotalRecovered","#{country.TotalRecovered}"]
            puts ["TotalDeaths","#{country.TotalDeaths}"]
        end
    end
end




end