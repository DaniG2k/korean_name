describe Hello do
  context 'first test' do
    it 'is a test' do
      hello = Hello.new

      expect(hello.greet).to eq('Hello, world!')
    end
  end
end
