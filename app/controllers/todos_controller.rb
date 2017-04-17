class TodosController <ApplicationController
    
    def new
        @todo = Todo.new
    end
    
    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            flash[:notice] = "Todo was sucessfully created!"
          redirect_to todo_path(@todo)
        else
          render 'new'
        end
    end
    
    def show
      
    private
    
    def todo_params
        params.require(:todo).permit(:name, :description)
    end
         
    end
    
end