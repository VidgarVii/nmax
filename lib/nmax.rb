# require "nmax/version"

module Nmax
  class Error < StandardError; end

  def self.call(string, count)
    raise Error, 'count must be positive' if count.negative?

    result = string.scan(/\d{1,1000}/)
                 .map(&:to_i)
                 .sort { |x, y| y <=> x }
                 .take(count)

    result.each { |num| puts num }
  end
end
