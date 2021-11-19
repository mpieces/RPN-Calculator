require 'calc'

require_relative 'io_test_helpers'

def get_user_input
  $stdin.gets.chomp
end

RSpec.configure do |c|
  c.include IoTestHelpers
end

RSpec.describe Calculator do
  describe '#initialize' do
		it 'should be a valid Calculator instance' do
			expect(subject).to be_an_instance_of(Calculator)
		end

		it 'should initialize with an empty array' do
			expect(subject.stack.size).to eq(0)
		end
	end

  describe '#evaluate_input' do 
    it "prints an exit message on the exit command" do
      expect {
      simulate_stdin("q") { Calculator.new.evaluate_input }
      }.to output("Calculator 2.0 \nEnter 'q' to quit.\n>Goodbye!\n").to_stdout
    end
  end
end

