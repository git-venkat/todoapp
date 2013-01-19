class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
  end
  def add
    todo = Todo.create(:item => params[:todo_text])
   if !todo.valid?
        flash[:error] = todo.errors.full_messages.join("<br>").html_safe
   else
     flash[:success] = "Todo added successfully"
   end
   redirect_to :action => 'index'
  end
end
