require_relative 'queue'

describe Queue do
  before(:each) do
    @queue = Queue.new
  end

  it "operates on the principle first in/last out" do
    @queue.enqueue(1)
    @queue.peek.should be(1)
    @queue.empty?.should be_false
    @queue.dequeue.should be(1)
    @queue.empty?.should be_true
    @queue.peek.should be_nil
  end

  describe "#enqueue" do
    it "puts an element on queue " do
      @queue.enqueue( 1 )

      @queue.empty?.should be_false
      @queue.peek.should eq(1)
    end
  end

  describe "#peek" do
    it "returns nil on empty queue" do
      @queue.enqueue(1)
      @queue.dequeue()
      @queue.peek.should be_nil
    end

    it "returns first on queue without dequeueing it" do
      @queue.enqueue(1)
      @queue.peek.should eq(1)
    end
  end

  describe "#dequeue" do
    it "returns nil on empty queue" do
      @queue.dequeue.should be_nil
    end

    it "returns first on queue and removes it" do
      @queue.enqueue(1)
      @queue.dequeue.should eq(1)
      @queue.empty?.should be_true
    end
  end

  describe "#empty?" do
    it "is true on empty queue" do
      @queue.empty?.should be_true
    end

    it "is false when anything is enqueud" do
      @queue.enqueue(1)
      @queue.empty?.should be_false
    end
  end
end
