describe Box do

  context 'when created' do
    let(:new_box) {Box.new}

    it 'should be empty' do
      expect(new_box.empty?).to be true
    end

    it 'has nil inside' do
      expect(new_box.content).to eq nil
    end
  end

  
end
