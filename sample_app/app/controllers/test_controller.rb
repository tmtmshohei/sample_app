class TestController < ApplicationController

def test
end

def create
  @task=Task.new(content: params[:content])
  @task.save
  redirect_to("/test/list")
end


def list
  @task=Task.new(content: params[:content])
  @task.save
end

end
