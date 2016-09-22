describe KoreanName do
  context 'Korean name' do
    it 'converts to English' do
      name = KoreanName::Translator.new "김연아"

      expect(name.to_en).to eq({:first_name=>"Yeonah", :last_name=>"Kim"})
    end
  end

  #context 'English name' do
  #  it 'converts to Korean' do
  #    name = KoreanName.new "Kim Yeona"

  #    expect(name.to_kr).to eq("김연아")
  #  end
  #end
end
