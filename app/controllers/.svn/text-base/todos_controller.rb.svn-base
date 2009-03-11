class TodosController < ApplicationController
  layout 'application'
  
  def index
    @event = Event.find(params[:event_id])
    @todos = @event.todos.find(:all)
    
    @new_todo = Todo.new
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:event_id])
    @todos = Todo.find(:all)
    @todo = Todo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end
  
  def create
    @event = Event.find(params[:event_id])
    @todo = @event.todos.build(params[:todo])
    
    respond_to do |format|
      if @todo.save
        #flash[:notice] = 'ToDo was successfully added'
        format.html { redirect_to @event }
        format.js
      else
        flash[:error] = @todo.errors.full_messages.to_sentence
        format.html { redirect_to @event }
        format.js do
          render :update do |page|
            page.redirect_to @event
          end  
        end        
      end
      check_if_send_email
    end
  end
  
  def update
    @todo = Todo.find(params[:todo_id])
    
    respond_to do |format|
      format.html { redirect_to @event }
      format.js do
        render :update do |page|
          page.redirect_to @event
        end
      end
    end
  end
  
  def destroy
    @event = Event.find(params[:event_id])
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.xml  { head :ok }
      format.js
    end
  end
  
  def check_if_send_email
    if params[:send_email] == "1"
       Notifier.deliver_todo_notification(@todo.user)
    end    
  end
  
  def complete
    Todo.update_all(["complete=?", 1], :id => params[:todo_ids])
    redirect_to event_path(1)
  end
  
end
