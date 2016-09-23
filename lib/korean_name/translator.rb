module KoreanName
  class Translator
    def initialize(args)
      @dict = YAML.load_file "lib/korean_name/dict.yml"

      if args[:first_name] =~ /\A\p{Hangul}+\Z/ && args[:last_name] =~ /\A\p{Hangul}+\Z/
        @ko_first_name = args[:first_name]
        @ko_last_name = args[:last_name]
      else
        @en_first_name = args[:first_name]
        @en_last_name = args[:last_name]
      end
    end

    def to_ko
      if @ko_first_name.present? && @ko_last_name.present?
        {first_name: @ko_first_name, last_name: @ko_last_name}
      else
        {}
      end
    end

    def to_en
      if @ko_first_name.present? && @ko_last_name.present?
        last_name = @dict['ko'][@ko_last_name]
        first_name = @ko_first_name.split('').map {|char| @dict['ko'][char]}.compact.join('')

        {first_name: first_name.titleize, last_name: last_name.titleize}
      else
        {first_name: @en_first_name, last_name: @en_last_name}
      end
    end

  end
end
