class SkilldbsController < ApplicationController
  # GET /skilldbs
  # GET /skilldbs.json
  def index
    @skilldbs = Skilldb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skilldbs }
    end
  end

  # GET /skilldbs/1
  # GET /skilldbs/1.json
  def show
    @skilldb = Skilldb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skilldb }
    end
  end

  # GET /skilldbs/new
  # GET /skilldbs/new.json
  def new
    @skilldb = Skilldb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skilldb }
    end
  end

  # GET /skilldbs/1/edit
  def edit
    @skilldb = Skilldb.find(params[:id])
  end

  # POST /skilldbs
  # POST /skilldbs.json
  def create
    @skilldb = Skilldb.new(params[:skilldb])

    respond_to do |format|
      if @skilldb.save
        format.html { redirect_to @skilldb, notice: 'Skilldb was successfully created.' }
        format.json { render json: @skilldb, status: :created, location: @skilldb }
      else
        format.html { render action: "new" }
        format.json { render json: @skilldb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skilldbs/1
  # PUT /skilldbs/1.json
  def update
    @skilldb = Skilldb.find(params[:id])

    respond_to do |format|
      if @skilldb.update_attributes(params[:skilldb])
        format.html { redirect_to @skilldb, notice: 'Skilldb was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @skilldb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skilldbs/1
  # DELETE /skilldbs/1.json
  def destroy
    @skilldb = Skilldb.find(params[:id])
    @skilldb.destroy

    respond_to do |format|
      format.html { redirect_to skilldbs_url }
      format.json { head :ok }
    end
  end
end
