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
      if @kr_first_name.present? && @kr_last_name.present?
        last_name = @dict[@kr_last_name]
        first_name = @kr_first_name.split('').map {|char| @dict[char]}.compact.join('')

        {first_name: first_name.titleize, last_name: last_name.titleize}
      else
        {first_name: @en_first_name, last_name: @en_last_name}
      end
    end

  end
end
