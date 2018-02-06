class TestController < ApplicationController

def test
end

def create
  @task=Task.new(content: params[:content])
  @task.save
  redirect_to("/test/list")
end


def list
  @task=Task.all
end

def tree

end



def show
    @task = Task.find_by(id: params[:id])
  end

end
