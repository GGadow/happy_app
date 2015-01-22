class Quote < ActiveRecord::Base
  def part1
    self.saying
  end

  def part2
    self.source
  end
end
