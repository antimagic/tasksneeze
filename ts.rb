#!/usr/bin/ruby

class TaskSneeze
  attr_accessor :tasks
  attr_accessor :preamble

  def initialize
    # TODO: tasks in external file
    # TODO: take desired time as arg & grab an appropriate task for the time window
    # TODO: cli for adding new tasks to file
    @tasks = [
      "do some art studies for 30 minutes",
      "overengineer this for 30 minutes",
      "build a comic platform for 1 hour"
    ]

    @preamble = [
      "go",
      "i think we both know you're about to",
      "stop messing about and",
      "put that down it's time to"
    ]
  end

  def randomPreamble
    return self.preamble.sample
  end

  def task
    return self.randomPreamble + " " + self.tasks.sample
  end
end

puts TaskSneeze.new.task
