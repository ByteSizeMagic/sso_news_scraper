

class SsoNewsScraper::CLI
  def run
    system("clear")
    greeting
    
    end_program
  end

  def greeting 
    puts "Welcome to Star Stable Online News Scraper!"
  end

  # while menu != "exit"

  # end

  def menu 
    puts "Please choose an option: "
    list_options
    user_input = gets.strip.downcase
    return input
  end
  
  def end_program
    puts "Thanks for checking out the news for Star Stable Online, see ya soon!"
  end




  end