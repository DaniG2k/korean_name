describe KoreanName do
  context 'Korean name' do
    it '#to_en converts Korean to English' do
      name = KoreanName::Translator.new :first_name => "연아", :last_name => "김"

      expect(name.to_en).to eq({:first_name => "Yeonah", :last_name => "Kim"})
    end

    it '#to_en leaves English in English' do
      name = KoreanName::Translator.new(:first_name => "Yeonah", :last_name => "Kim")

      expect(name.to_en).to eq({first_name: "Yeonah", last_name: "Kim"})
    end
  end

  #context 'English name' do
  #  it 'converts to Korean' do
  #    name = KoreanName.new "Kim Yeona"

  #    expect(name.to_kr).to eq("김연아")
  #  end
  #end
end
