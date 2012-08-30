# encoding utf-8
class PokedbsController < ApplicationController
  # GET /pokedbs
  # GET /pokedbs.json
  def index
    @pokedbs = Pokedb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pokedbs }
    end
  end

  # GET /pokedbs/1
  # GET /pokedbs/1.json
  def show
    @pokedb = Pokedb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pokedb }
    end
  end

  # GET /pokedbs/new
  # GET /pokedbs/new.json
  def new
    @pokedb = Pokedb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pokedb }
    end
  end

  # GET /pokedbs/1/edit
  def edit
    @pokedb = Pokedb.find(params[:id])
  end

  # POST /pokedbs
  # POST /pokedbs.json
  def create
    @pokedb = Pokedb.new(params[:pokedb])

    respond_to do |format|
      if @pokedb.save
        format.html { redirect_to @pokedb, notice: 'Pokedb was successfully created.' }
        format.json { render json: @pokedb, status: :created, location: @pokedb }
      else
        format.html { render action: "new" }
        format.json { render json: @pokedb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pokedbs/1
  # PUT /pokedbs/1.json
  def update
    @pokedb = Pokedb.find(params[:id])

    respond_to do |format|
      if @pokedb.update_attributes(params[:pokedb])
        format.html { redirect_to @pokedb, notice: 'Pokedb was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pokedb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokedbs/1
  # DELETE /pokedbs/1.json
  def destroy
    @pokedb = Pokedb.find(params[:id])
    @pokedb.destroy

    respond_to do |format|
      format.html { redirect_to pokedbs_url }
      format.json { head :ok }
    end
  end
end
