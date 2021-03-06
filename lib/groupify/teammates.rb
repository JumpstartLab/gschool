require 'set'
module Groupify
  class Teammates
    attr_reader :student, :all
    def initialize(student)
      @student = student
      @mates = Set.new
    end

    def <<(other)
      Array(other).each do |name|
        @mates.add(name) unless name == student
      end
    end

    def to_a
      @mates.sort
    end
  end
end
