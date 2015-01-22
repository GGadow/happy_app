class Joke < ActiveRecord::Base
  def part1
    self.setup
  end

  def part2
    self.punchline
  end
end
