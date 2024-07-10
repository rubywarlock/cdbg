require "rainbow"
require 'pp'

require_relative "dbg/version"
require_relative "dbg/colors"
require_relative "dbg/counter"
require_relative "dbg/tools"

class Dbg
  cattr_accessor :counter

  include Tools

  def self.log
    @log ||= Body.new
  end

  def self.start_test
    log.sep.green
    log.add('START TEST').darkgoldenrod
    log.sep.green.out
    empty
  end

  def self.end_test
    empty
    log.sep.green
    log.add('END TEST').darkgoldenrod
    log.sep.green.out
  end

  def self.empty
    puts
    self
  end

  def self.counter
    @@counter ||= Counter.new
  end

  def self.list_colors
    Colors::COLORS.each do |color_name|
      log.add(color_name).send(color_name.to_sym)
    end

    log.print
  end
end
