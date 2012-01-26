class LinkcategoriesController < ApplicationController
  # GET /linkcategories
  # GET /linkcategories.json
  def index
    @linkcategories = Linkcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @linkcategories }
    end
  end

  # GET /linkcategories/1
  # GET /linkcategories/1.json
  def show
    @linkcategory = Linkcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @linkcategory }
    end
  end

  # GET /linkcategories/new
  # GET /linkcategories/new.json
  def new
    @linkcategory = Linkcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @linkcategory }
    end
  end

  # GET /linkcategories/1/edit
  def edit
    @linkcategory = Linkcategory.find(params[:id])
  end

  # POST /linkcategories
  # POST /linkcategories.json
  def create
    @linkcategory = Linkcategory.new(params[:linkcategory])

    respond_to do |format|
      if @linkcategory.save
        format.html { redirect_to @linkcategory, notice: 'Linkcategory was successfully created.' }
        format.json { render json: @linkcategory, status: :created, location: @linkcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @linkcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /linkcategories/1
  # PUT /linkcategories/1.json
  def update
    @linkcategory = Linkcategory.find(params[:id])

    respond_to do |format|
      if @linkcategory.update_attributes(params[:linkcategory])
        format.html { redirect_to @linkcategory, notice: 'Linkcategory was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @linkcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkcategories/1
  # DELETE /linkcategories/1.json
  def destroy
    @linkcategory = Linkcategory.find(params[:id])
    @linkcategory.destroy

    respond_to do |format|
      format.html { redirect_to linkcategories_url }
      format.json { head :ok }
    end
  end
end
