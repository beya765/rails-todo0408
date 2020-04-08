class TodosController < ApplicationController
  def home
    @todo = Todo.new
    @todos = Todo.all
  end

  def create
    @todo = Todo.new(msg: params[:todo][:msg])
    @todo.save unless @todo.msg.blank?
    redirect_to root_url
  end
  
  def delete
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to root_url
  end
end
