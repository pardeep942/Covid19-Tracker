require 'pry'
require 'net/http'
require 'json'


class API

    def self.fetch_countries
        url = "https://api.covid19api.com/summary"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        #binding.pry
        array_of_covid19data = hash["Countries"]  #array


        array_of_covid19data.each do |index|        

            country_instance = Country.new(name: index["Country"])
            country_instance.NewDeaths = index["NewDeaths"]
            country_instance.TotalRecovered = index["TotalRecovered"]
            country_instance.TotalDeaths = index["TotalDeaths"]
            end
          

    end


   
end