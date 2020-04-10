class CLI
  def start
    Star_Wars_API.scrape_characters
    puts "Welcome to the Star Wars Character Finder"
    list_characters
    menu
  end

  def list_characters
    StarWarsCharacter.all.each.with_index(1) do | char, i |
      puts "#{i}. #{char.name}" 
    end
  end

  def menu
    puts "Please select a number"
    input = gets.strip
    binding.pry
    if !input.to_i.between?(1, StarWarsCharacter.all.count)
      puts "I didn't understand that. Please try again!"
      list_characters
      menu
    else
      char = StarWarsCharacter.all[input.to_i-1]
      get_character_details(char)
    end
    puts "Would you like to see another character?"
    puts "Please enter y or n"
    another_char = get.downcase.strip
    if another_char == "y"
      list_characters
      menu
    elsif another_char == "n"
      puts "Thank you for visiting our Star Wars Character Lister"
      exit
    else
      puts "I didn't quite get that."
      list_characters
      menu
    end
  end

  def get_character_details(char)

  end

end