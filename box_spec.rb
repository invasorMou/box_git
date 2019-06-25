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

  context 'when storing stuffs' do
    let(:new_box) {Box.new}

    it "should be able to store an object" do
      expect(new_box.empty?).to be true
      new_box.content('oranges')
      expect(new_box.empty?).to be false
    end

    it "should display the stored object information" do
      expect(new_box.check_box).to be_a String
      expect(new_box.check_box).to include "object:"
    end

    it "should display object: String when storing a string" do
      new_box.content('shoes')
      expect(new_box.check_box).to include "String"
    end
  end



end
