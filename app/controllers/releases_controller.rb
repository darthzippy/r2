class ReleasesController < ApplicationController
  layout 'application'
  
  def index
    @event = Event.find(params[:event_id])
    @releases = @event.releases.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:event_id])
    @releases = Release.find(:all)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end
  
  def edit
    @event = Event.find(params[:event_id])
    @release = @event.releases.find(params[:id])
  end
  
  def create
    @event = Event.find(params[:event_id])
    @release = @event.releases.build(params[:release])
    
    respond_to do |format|
      if @release.save
        #flash[:notice] = 'Release was successfully added'
        format.html { redirect_to @event }
        format.js
      else
        flash[:error] = @release.errors.full_messages.to_sentence
        format.html { redirect_to @event }
        format.js do
          render :update do |page|
            page.redirect_to @event
          end  
        end
      end
    end
  end
  
  def update
    @event = Event.find(params[:event_id])
    @release = @event.releases.find(params[:id])

    respond_to do |format|
      if @release.update_attributes(params[:release])
        format.html { redirect_to(@release) }
        format.xml  { head :ok }
        format.js
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  def destroy
    @event = Event.find(params[:event_id])
    @release = Release.find(params[:id])
    @release.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.xml  { head :ok }
      format.js
    end
  end
end