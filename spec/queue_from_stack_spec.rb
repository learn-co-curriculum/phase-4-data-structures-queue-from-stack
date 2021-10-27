RSpec.describe MyQueue do
  describe '#initialize' do
    it 'creates two instances of the Stack class' do
      queue = MyQueue.new
      expect(queue.instance_variable_get(:@s1)).to be_a(Stack)
      expect(queue.instance_variable_get(:@s2)).to be_a(Stack)
    end
  end

  describe '#add' do
    it 'pushes an item onto the queue' do
      queue = MyQueue.new
      queue.add(1)
      queue.add(2)
      queue.add(3)
      queue.add(0)

      expect(queue.peek).to eq(1)
    end

  end

  describe '#remove' do
    it 'returns the first item in the queue and removes it' do
      queue = MyQueue.new
      queue.add(1)
      queue.add(2)
      queue.add(3)

      expect(queue.remove).to eq(1)
      expect(queue.remove).to eq(2)
      expect(queue.remove).to eq(3)
      expect(queue.remove).to eq(nil)
    end
  end

  describe '#peek' do
    it 'returns the frontmost item in the queue without removing it' do
      queue = MyQueue.new
      queue.add(1)
      queue.add(2)
      queue.add(3)
      expect(queue.peek).to eq(1)
      expect(queue.peek).to eq(1)
    end
  end

end