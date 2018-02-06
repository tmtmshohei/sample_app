class MainController < ApplicationController

def  main
end

def  lists
@task=Task.all
end

def create
@task=Task.new(content: params[:content])
@task.save
redirect_to("/main/lists")
end

def show
@task=Task.find_by(id: params[:id])
end

def edit
@task=Task.find_by(id: params[:id])
end

def update
@task=Task.find_by(id: params[:id])
@task.content=params[:content]
@task.save
redirect_to("/main/lists")
end

def delete
@task=Task.find_by(id: params[:id])
@task.destroy
redirect_to("/main/lists")

end


end
