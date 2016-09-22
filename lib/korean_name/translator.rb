module KoreanName
  class Translator
    def initialize(name)
      if name =~ /\A\p{Hangul}+\Z/
        @kr_name = name
      else
        @en_name = name
      end
    end

    def to_kr
    end

    def to_en
      dict = YAML.load_file "lib/korean_name/dict.yml"
      array = @kr_name.split ''

      last_name = dict[array.shift]
      first_name = array.map {|char| dict[char]}.compact.join('')
     
      last_name[0] = last_name[0].upcase
      first_name[0] = first_name[0].upcase

      {first_name: first_name, last_name: last_name}
    end
  end
end
