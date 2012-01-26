class GrammarsController < ApplicationController
  # GET /grammars
  # GET /grammars.json
  def index
    @grammars = Grammar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grammars }
    end
  end

  # GET /grammars/1
  # GET /grammars/1.json
  def show
    @grammar = Grammar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grammar }
    end
  end

  # GET /grammars/new
  # GET /grammars/new.json
  def new
    @grammar = Grammar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grammar }
    end
  end

  # GET /grammars/1/edit
  def edit
    @grammar = Grammar.find(params[:id])
  end

  # POST /grammars
  # POST /grammars.json
  def create
    @grammar = Grammar.new(params[:grammar])

    respond_to do |format|
      if @grammar.save
        format.html { redirect_to @grammar, notice: 'Grammar was successfully created.' }
        format.json { render json: @grammar, status: :created, location: @grammar }
      else
        format.html { render action: "new" }
        format.json { render json: @grammar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grammars/1
  # PUT /grammars/1.json
  def update
    @grammar = Grammar.find(params[:id])

    respond_to do |format|
      if @grammar.update_attributes(params[:grammar])
        format.html { redirect_to @grammar, notice: 'Grammar was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @grammar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grammars/1
  # DELETE /grammars/1.json
  def destroy
    @grammar = Grammar.find(params[:id])
    @grammar.destroy

    respond_to do |format|
      format.html { redirect_to grammars_url }
      format.json { head :ok }
    end
  end
end
