class TodoItemsController < ApplicationController
  before_action :set_todo_list

def create
  @todo_item = @todo_list.todo_items.create(todo_item_params)
  redirect to @todo_list
end

def destroy
  @todo_item = @todo_list.todo_item.find(params[:id])
  if @todo_item.destroy
    flash[:success] = "To Do List item was deleted"
  else
    flash [:error] = "To Do List item could not be deleted"
  end
  redirect to @todo_list
end



private
def set_todo_list
  @todo_list = TodoList.find(params[:todo_list_id])
end

def todo_item_params
  params[:todo_item].permit(:content)
end

end
