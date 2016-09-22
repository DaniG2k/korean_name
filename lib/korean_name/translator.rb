module KoreanName
  class Translator
    def initialize(args)
      @dict = YAML.load_file "lib/korean_name/dict.yml"

      if args[:first_name] =~ /\A\p{Hangul}+\Z/ && args[:last_name] =~ /\A\p{Hangul}+\Z/
        @kr_first_name = args[:first_name]
        @kr_last_name = args[:last_name]
      else
        @en_first_name = args[:first_name]
        @en_last_name = args[:last_name]
      end
    end

    def to_kr
    end

    def to_en
      unless @kr_first_name.nil? && @kr_last_name.nil?
        last_name = @dict[@kr_last_name]
        first_name = @kr_first_name.split('').map {|char| @dict[char]}.compact.join('')
        last_name[0] = last_name[0].upcase
        first_name[0] = first_name[0].upcase

        {first_name: first_name, last_name: last_name}
      else
        {first_name: @en_first_name, last_name: @en_last_name}
      end
    end

  end
end
