class PokepartiesController < ApplicationController
  # GET /pokeparties
  # GET /pokeparties.json
  def index
    @pokeparties = Pokeparty.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pokeparties }
    end
  end

  # GET /pokeparties/1
  # GET /pokeparties/1.json
  def show
    @pokeparty = Pokeparty.find(params[:id])
    @poke1   = Pokedb.find_by_name(@pokeparty.p1name)
    @poke2   = Pokedb.find_by_name(@pokeparty.p2name)
    @poke3   = Pokedb.find_by_name(@pokeparty.p3name)
    @poke4   = Pokedb.find_by_name(@pokeparty.p4name)
    @poke5   = Pokedb.find_by_name(@pokeparty.p5name)
    @poke6   = Pokedb.find_by_name(@pokeparty.p6name)

    @poke1_1 = Skilldb.find_by_skillname(@pokeparty.p1trick1)
    @poke1_2 = Skilldb.find_by_skillname(@pokeparty.p1trick2)
    @poke1_3 = Skilldb.find_by_skillname(@pokeparty.p1trick3)
    @poke1_4 = Skilldb.find_by_skillname(@pokeparty.p1trick4)

    @poke2_1 = Skilldb.find_by_skillname(@pokeparty.p2trick2)
    @poke2_2 = Skilldb.find_by_skillname(@pokeparty.p2trick2)
    @poke2_3 = Skilldb.find_by_skillname(@pokeparty.p2trick3)
    @poke2_4 = Skilldb.find_by_skillname(@pokeparty.p2trick4)

    @poke3_1 = Skilldb.find_by_skillname(@pokeparty.p3trick1)
    @poke3_2 = Skilldb.find_by_skillname(@pokeparty.p3trick2)
    @poke3_3 = Skilldb.find_by_skillname(@pokeparty.p3trick3)
    @poke3_4 = Skilldb.find_by_skillname(@pokeparty.p3trick4)

    @poke4_1 = Skilldb.find_by_skillname(@pokeparty.p4trick1)
    @poke4_2 = Skilldb.find_by_skillname(@pokeparty.p4trick2)
    @poke4_3 = Skilldb.find_by_skillname(@pokeparty.p4trick3)
    @poke4_4 = Skilldb.find_by_skillname(@pokeparty.p4trick4)

    @poke5_1 = Skilldb.find_by_skillname(@pokeparty.p5trick1)
    @poke5_2 = Skilldb.find_by_skillname(@pokeparty.p5trick2)
    @poke5_3 = Skilldb.find_by_skillname(@pokeparty.p5trick3)
    @poke5_4 = Skilldb.find_by_skillname(@pokeparty.p5trick4)

    @poke6_1 = Skilldb.find_by_skillname(@pokeparty.p6trick1)
    @poke6_2 = Skilldb.find_by_skillname(@pokeparty.p6trick2)
    @poke6_3 = Skilldb.find_by_skillname(@pokeparty.p6trick3)
    @poke6_4 = Skilldb.find_by_skillname(@pokeparty.p6trick4)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pokeparty }
    end
  end

  # GET /pokeparties/new
  # GET /pokeparties/new.json
  def new
    @pokeparty = Pokeparty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pokeparty }
    end
  end

  # GET /pokeparties/1/edit
  def edit
    @pokeparty = Pokeparty.find(params[:id])
  end

  # POST /pokeparties
  # POST /pokeparties.json
  def create
    @pokeparty = Pokeparty.new(params[:pokeparty])

    respond_to do |format|
      if @pokeparty.save
        format.html { redirect_to @pokeparty, notice: 'Pokeparty was successfully created.' }
        format.json { render json: @pokeparty, status: :created, location: @pokeparty }
      else
        format.html { render action: "new" }
        format.json { render json: @pokeparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pokeparties/1
  # PUT /pokeparties/1.json
  def update
    @pokeparty = Pokeparty.find(params[:id])

    respond_to do |format|
      if @pokeparty.update_attributes(params[:pokeparty])
        format.html { redirect_to @pokeparty, notice: 'Pokeparty was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pokeparty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokeparties/1
  # DELETE /pokeparties/1.json
  def destroy
    @pokeparty = Pokeparty.find(params[:id])
    @pokeparty.destroy

    respond_to do |format|
      format.html { redirect_to pokeparties_url }
      format.json { head :ok }
    end
  end
end
