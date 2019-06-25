describe Box do
  context 'when created' do
    it 'should be empty' do
      new_box = Box.new
      expect(new_box.empty?).to be true
    end
  end
end
