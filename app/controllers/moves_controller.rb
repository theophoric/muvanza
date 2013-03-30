class MovesController < ApplicationController

  before_filter :get_move, only: [:new, :inventory]

  def inventory
    @home = @move.home
    @rooms = @home.rooms
  end

  def details
    
  end


  def confirm
    @move = Move.find(params[:id])
    @inventory = @move.inventory
  end

  def pending
    @move = Move.find(params[:id])
    @inventory = @move.inventory
  end

  # GET /moves
  # GET /moves.json
  def index
    @moves = Move.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moves }
    end
  end

  # GET /moves/1
  # GET /moves/1.json
  def show
    @move = Move.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @move }
    end
  end

  # GET /moves/new
  # GET /moves/new.json
  def new
    @move = Move.new
    @home_templates = HomeTemplate.all
    # @move.build_to_address
    # @move.build_from_address
    respond_to do |format|
      format.html {render layout: 'no_sidebar' }
      format.json { render json: @move}
    end
  end

  # GET /moves/1/edit
  def edit
    @move = Move.find(params[:id])
    @inventory = @move.inventory
  end

  # POST /moves
  # POST /moves.json
  def create
    puts params
    home_template = HomeTemplate.find(params[:home_template_id])


    @move = Move.new(params[:move]) # this is currently empty

    # need to initialize the new home based on the home template
    # home will always be bound to a  home template


    # then generate rooms and items based on respective templates

    @move.home = Home.new(template_id: home_template.id)

    respond_to do |format|
      if @move.save!
        format.html { redirect_to action: :inventory, id: @move.id }
        format.json { render json: @move, status: :created, location: @move }
      else
        format.html { render action: "new" }
        format.json { render json: @move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /moves/1
  # PUT /moves/1.json
  def update
    @move = Move.find(params[:id])

    respond_to do |format|
      if @move.update_attributes(params[:move])
        format.html { redirect_to @move, notice: 'Move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moves/1
  # DELETE /moves/1.json
  def destroy
    @move = Move.find(params[:id])
    @move.destroy

    respond_to do |format|
      format.html { redirect_to moves_url }
      format.json { head :no_content }
    end
  end

  private
    def get_move
      @move = params[:id].nil? ? Move.new(params[:move]) : Move.find(params[:id])
    end

    def get_moves
      @moves = Move.all
    end

end
