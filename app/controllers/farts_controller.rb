
class FartsController < ApplicationController
  # GET /farts
  # GET /farts.json
  def index
    @farts = Fart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @farts }
    end
  end

  # GET /farts/1
  # GET /farts/1.json
  def show
    @fart = Fart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fart }
    end
  end

  # GET /farts/new
  # GET /farts/new.json
  def new
    @fart = Fart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fart }
    end
  end

  # GET /farts/1/edit
  def edit
    @fart = Fart.find(params[:id])
  end

  # POST /farts
  # POST /farts.json
  def create
    @fart = Fart.new(params[:fart])

    respond_to do |format|
      if @fart.save
        format.html { redirect_to @fart, notice: 'Fart was successfully created.' }
        format.json { render json: @fart, status: :created, location: @fart }
      else
        format.html { render action: "new" }
        format.json { render json: @fart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /farts/1
  # PUT /farts/1.json
  def update
    @fart = Fart.find(params[:id])

    respond_to do |format|
      if @fart.update_attributes(params[:fart])
        format.html { redirect_to @fart, notice: 'Fart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farts/1
  # DELETE /farts/1.json
  def destroy
    @fart = Fart.find(params[:id])
    @fart.destroy

    respond_to do |format|
      format.html { redirect_to farts_url }
      format.json { head :no_content }
    end
  end
end
