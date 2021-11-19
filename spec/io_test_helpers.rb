require 'stringio'

# A very good reference of how to implement this STDIN simulator. Found at:
# https://tommaso.pavese.me/2016/05/08/understanding-and-testing-io-in-ruby/

module IoTestHelpers
	extend self

	def simulate_stdin(*inputs, &block)
		io = StringIO.new
		inputs.flatten.each { |str| io.puts(str) }
		io.rewind

		actual_stdin, $stdin = $stdin, io
		yield
	ensure
		$stdin = actual_stdin
	end
end