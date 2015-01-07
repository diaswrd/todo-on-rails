require 'test_helper'

class TasksControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should mark a task as done" do
    task = Task.create name: 'my test task'
    task.save

    get :mark_as_done, :id => task.id

    assert_redirected_to action: "index"

    task.destroy
  end

end
