#!/usr/bin/env ruby

require_relative '../../ruby_task_helper/files/task_helper.rb'

class MyTask < TaskHelper
  def task(name: nil, **kwargs)
    if name.empty?
      raise TaskHelper::Error.new(
        'No empty names please',
        'mytask/not-empty-names',
        'This task does not allow empty names my friend'
      )
    end
    { greeting: "Hi, my name is #{name}" }
  end
end

if __FILE__ == $0
  MyTask.run
end
