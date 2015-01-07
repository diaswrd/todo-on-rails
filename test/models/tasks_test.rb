require 'test_helper'

class TasksTest < ActiveSupport::TestCase

  test "should not create a task without name" do
      task = Task.create

      assert_not task.save
  end

  test "should create a task with a true status" do
    task = Task.create name: 'my test task'
    task.save

    assert task.status

    task.destroy
  end

end
