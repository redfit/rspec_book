module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      maker = Maker.new(@secret, guess)
      @output.puts '+' * maker.exact_match_count +
                   '-' * maker.number_match_count
    end

    class Maker
      def initialize(secret, guess)
        @secret, @guess = secret, guess
      end
      def number_match_count
        (0..3).inject(0) do |count, index|
          count + (number_match?(index) ? 1 : 0)
        end
      end
      def exact_match_count
        (0..3).inject(0) do |count, index|
          count + (exact_match?(index) ? 1 : 0)
        end
      end
      def exact_match?(index)
        @guess[index] == @secret[index]
      end

      def number_match?(index)
        @secret.include?(@guess[index]) && !exact_match?(index)
      end
    end
  end
end

