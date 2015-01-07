require 'test_helper'

class TasksTest < ActiveSupport::TestCase

  test "should not create a task without name" do
      task = Task.create

      assert_not task.save
  end

  test "should create a task that is not done yet" do
    task = Task.create name: 'my test task'
    task.save

    assert_not task.done

    task.destroy
  end

end
