require 'pry'
require 'net/http'
require 'json'


class API

    def fetch_covid19data

        url = "https://api.covid19api.com/summary"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_covid19data = hash["Countries"]  #array

        array_of_covid19data.each { |index|        
            if (index["Country"]=="United States of America" || index["Country"]=="Canada" || index["Country"]=="Mexico") 
            puts index["Country"]
            puts ["New Deaths", index["NewDeaths"]]
            puts ["Total Recoved", index["TotalRecovered"]]
            puts ["Total Death", index["TotalDeaths"]]
            puts "..............................."
        
            end
            }
        
        #binding.pry
        
    end



    def fetch_covid19data_bycountry(user_input)

        url = "https://api.covid19api.com/summary"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_covid19data = hash["Countries"]  #array
        array_of_covid19data.each { |index| 
            if (index["Country"]== user_input) 
            puts index["Country"]
            puts "................................"
            puts ["New Deaths", index["NewDeaths"]]
            puts ["Total Recoved", index["TotalRecovered"]]
            puts ["Total Death", index["TotalDeaths"]]
            puts "..............................."
        
            end
            
        }
        #binding.pry
        
    end




   
end