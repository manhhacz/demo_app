class Micropost1sController < ApplicationController
  # GET /micropost1s
  # GET /micropost1s.xml
  def index
    @micropost1s = Micropost1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micropost1s }
    end
  end

  # GET /micropost1s/1
  # GET /micropost1s/1.xml
  def show
    @micropost1 = Micropost1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micropost1 }
    end
  end

  # GET /micropost1s/new
  # GET /micropost1s/new.xml
  def new
    @micropost1 = Micropost1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micropost1 }
    end
  end

  # GET /micropost1s/1/edit
  def edit
    @micropost1 = Micropost1.find(params[:id])
  end

  # POST /micropost1s
  # POST /micropost1s.xml
  def create
    @micropost1 = Micropost1.new(params[:micropost1])

    respond_to do |format|
      if @micropost1.save
        format.html { redirect_to(@micropost1, :notice => 'Micropost1 was successfully created.') }
        format.xml  { render :xml => @micropost1, :status => :created, :location => @micropost1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @micropost1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /micropost1s/1
  # PUT /micropost1s/1.xml
  def update
    @micropost1 = Micropost1.find(params[:id])

    respond_to do |format|
      if @micropost1.update_attributes(params[:micropost1])
        format.html { redirect_to(@micropost1, :notice => 'Micropost1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micropost1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost1s/1
  # DELETE /micropost1s/1.xml
  def destroy
    @micropost1 = Micropost1.find(params[:id])
    @micropost1.destroy

    respond_to do |format|
      format.html { redirect_to(micropost1s_url) }
      format.xml  { head :ok }
    end
  end
end
