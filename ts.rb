#!/usr/bin/ruby

require "colorize"

class TaskSneeze
  attr_accessor :tasks
  attr_accessor :preamble

  def initialize
    # TODO: tasks in external file
    # TODO: take desired time as arg & grab an appropriate task for the time window
    # TODO: cli for adding new tasks to file
    # TODO: set a timer
    @tasks = [
      "do some art studies for 30 minutes",
      "do a photo study",
      "draw two versions of a character",
      "draw at least one witch",
      "doodle for 15 minutes",
      "meditate on ruby koans for 30 minutes",
      "overengineer this for 30 minutes",
      "build a comic platform for 1 hour"
    ]

    @preamble = [
      "let's go",
      "oh cool you're gonna",
      "i think we both know you're about to",
      "stop messing about and",
      "put that down it's time to"
    ]
  end

  def randomPreamble
    return self.preamble.sample
  end

  def task
    return self.randomPreamble + " " + self.tasks.sample.green
  end
end

puts TaskSneeze.new.task
