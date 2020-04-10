class Star_Wars_API

  def self.scrape_characters
    resp = RestClient.get("https://swapi.co/api/people")
    characters_hash = JSON.parse(resp.body, symbolize_names:true)
    characters_array = characters_hash[:results]

    characters_array.each do |char|
      StarWarsCharacter.new(char[:name], char[:height], char[:hair_color], char[:skin_color], char[:eye_color], char[:url])
    end
  end

end