describe KoreanName do
  context 'Korean name' do
    it '#to_en converts Korean to English' do
      name1 = KoreanName::Translator.new :first_name => "연아", :last_name => "김"
      name2 = KoreanName::Translator.new :first_name => "연선", :last_name => "박"

      expect(name1.to_en).to eq({:first_name => "Yeonah", :last_name => "Kim"})
      expect(name2.to_en).to eq({:first_name => "Yeonseon", :last_name => "Bak"})
    end

    it '#to_en leaves English in English' do
      name1 = KoreanName::Translator.new(:first_name => "Yeonah", :last_name => "Kim")
      name2 = KoreanName::Translator.new(:first_name => "Yeonseon", :last_name => "Bak")

      expect(name1.to_en).to eq({first_name: "Yeonah", last_name: "Kim"})
      expect(name2.to_en).to eq({:first_name => "Yeonseon", :last_name => "Bak"})
    end
  end

  context 'English name' do
    it '#to_ko converts English to Korean' do
      name1 = KoreanName::Translator.new :first_name => 'Yeonah', :last_name => 'Kim'
      name2 = KoreanName::Translator.new :first_name => 'Yeonseon', :last_name => 'Bak'

      expect(name1.to_ko).to eq({first_name: "연아", last_name: "김"})
      expect(name2.to_ko).to eq({first_name: "연선", last_name: "박"})
    end

    it '#to_ko leaves Korean in Korean' do
      name1 = KoreanName::Translator.new(:first_name => "연아", :last_name => "김")
      name2 = KoreanName::Translator.new(:first_name => "연선", :last_name => "박")

      expect(name1.to_ko).to eq({first_name: "연아", last_name: "김"})
      expect(name2.to_ko).to eq({:first_name => "연선", :last_name => "박"})
    end
  end
end
