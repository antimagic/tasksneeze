#!/usr/bin/ruby

class TaskSneeze
  attr_accessor :tasks

  def initialize
    # TODO: tasks in external file
    # TODO: take desired time as arg & grab an appropriate task for the time window
    @tasks = [
      "30m art studies",
      "30m overengineer this",
      "1h comic platform"
    ]
  end

  def task
    return self.tasks.sample
  end
end

puts TaskSneeze.new.task
