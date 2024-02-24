require 'stack_practice'

RSpec.describe LLStack do
  let(:new_stack) { LLStack.new }

  describe ".push" do
    it "pushes a node onto the stack" do
      new_stack.push(50)
    end
  end

  describe ".pop" do
    it "pops a node of the stack and returns it" do
      new_stack.push(45)
      puts new_stack.pop
    end
  end

  describe ".peek" do
    it "peeks at the top of the stack and returns without popping" do
      new_stack.push(555)
      puts new_stack.peek
    end
  end
end
