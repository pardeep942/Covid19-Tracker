class CLI


    def start
        puts "Welcome to COVID19 tracker"
        self.menu
    end


    def menu
        puts "Below are the list of countries to select to see the latest COVID19 data"
        puts "Please enter any of the country name to see the data or type no to exit"
        puts "France"
        puts "Canada"
        puts "Mexico"
        puts "India"
        puts "Germany"
        puts "Sweden"
        puts "Bhutan"
        puts "China"
        
        user_input = gets.chomp
        if user_input == "France" || user_input == "Canada" || user_input == "Mexico" || user_input == "India" || user_input == "Germany"|| user_input == "Sweden"|| user_input == "Bhutan"|| user_input == "China"
            API.new.fetch_covid19data_bycountry(user_input)
            menu
        elsif user_input == "no"
            puts "Thank You!"
        else
            puts "Plese check the spelling of the country name"
            menu
        end

    end


    def display_list_of_covid19data
        API.new.fetch_covid19data
    end

end



