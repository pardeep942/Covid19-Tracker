class CLI

    def start
        puts "Welcome to COVID19 tracker"
        API.fetch_countries
        self.menu
    end



    def menu
        puts "Would you like to see the list of countries?"
        puts "Type 'yes' to continue or type exit."
        user_input = gets.strip.downcase
        if user_input == "yes"
            puts "Here is the list of all countries!"
            display_list_of_countries
            puts "please enter the country name to see the data for that country"
            country_name = gets.chomp
            country_name = country_name.capitalize
            Country.find_by_name(country_name)
            sleep(1)
            menu

        elsif user_input == "exit"
            #end the program
            puts "Goodbye!"
    
        else
        puts "please check the spelling or the content of the input provided."
        menu
        end
        
    end
    

    def display_list_of_countries

        Country.all.each.with_index(1) do |country, index|
            puts "#{index}. #{country.name}"
        end
    end



end



