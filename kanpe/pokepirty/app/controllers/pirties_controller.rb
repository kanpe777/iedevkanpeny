class PirtiesController < ApplicationController
  # GET /pirties
  # GET /pirties.json
  def index
    @pirties = Pirty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pirties }
    end
  end

  # GET /pirties/1
  # GET /pirties/1.json
  def show
    @pirty = Pirty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pirty }
    end
  end

  # GET /pirties/new
  # GET /pirties/new.json
  def new
    @pirty = Pirty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pirty }
    end
  end

  # GET /pirties/1/edit
  def edit
    @pirty = Pirty.find(params[:id])
  end

  # POST /pirties
  # POST /pirties.json
  def create
    @pirty = Pirty.new(params[:pirty])

    respond_to do |format|
      if @pirty.save
        format.html { redirect_to @pirty, notice: 'Pirty was successfully created.' }
        format.json { render json: @pirty, status: :created, location: @pirty }
      else
        format.html { render action: "new" }
        format.json { render json: @pirty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pirties/1
  # PUT /pirties/1.json
  def update
    @pirty = Pirty.find(params[:id])

    respond_to do |format|
      if @pirty.update_attributes(params[:pirty])
        format.html { redirect_to @pirty, notice: 'Pirty was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pirty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pirties/1
  # DELETE /pirties/1.json
  def destroy
    @pirty = Pirty.find(params[:id])
    @pirty.destroy

    respond_to do |format|
      format.html { redirect_to pirties_url }
      format.json { head :ok }
    end
  end
end
