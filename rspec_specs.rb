# to write test specifications we use describe with a string

describe 'specs for Box class' do
end
# or a class
describe Box do
end

# you can use another describe or context to explain

describe Box do
  describe 'when created' do
  end
  
  context 'if the box is empty' do
  end
end

# then for each case we want to test add 'it' blocks inside the describe

describe Box do
  let(:box) {Box.new}
  context 'when created' do
    it 'should be empty' do
      expect(box.empty?).to be true
    end
  end
  
  context 'if the box is empty' do
    it 'can store stuffs' do
      expect(box.empty?).to be true
      box.store('oranges')
      expect(box.empty?).to be false
    end
  end
end