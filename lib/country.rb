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

end