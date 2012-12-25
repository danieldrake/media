class ConfrencesController < ApplicationController
  # GET /confrences
  # GET /confrences.json
  def index
    @confrences = Confrence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @confrences }
    end
  end

  # GET /confrences/1
  # GET /confrences/1.json
  def show
    @confrence = Confrence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @confrence }
    end
  end

  # GET /confrences/new
  # GET /confrences/new.json
  def new
    @confrence = Confrence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @confrence }
    end
  end

  # GET /confrences/1/edit
  def edit
    @confrence = Confrence.find(params[:id])
  end

  # POST /confrences
  # POST /confrences.json
  def create
    @confrence = Confrence.new(params[:confrence])

    respond_to do |format|
      if @confrence.save
        format.html { redirect_to @confrence, notice: 'Confrence was successfully created.' }
        format.json { render json: @confrence, status: :created, location: @confrence }
      else
        format.html { render action: "new" }
        format.json { render json: @confrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /confrences/1
  # PUT /confrences/1.json
  def update
    @confrence = Confrence.find(params[:id])

    respond_to do |format|
      if @confrence.update_attributes(params[:confrence])
        format.html { redirect_to @confrence, notice: 'Confrence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @confrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confrences/1
  # DELETE /confrences/1.json
  def destroy
    @confrence = Confrence.find(params[:id])
    @confrence.destroy

    respond_to do |format|
      format.html { redirect_to confrences_url }
      format.json { head :no_content }
    end
  end
end
