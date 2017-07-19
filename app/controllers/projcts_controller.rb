class ProjctsController < ApplicationController
  before_action :set_projct, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

  # GET /projcts
  # GET /projcts.json
  def index
    @projcts = Projct.all
  end

  # GET /projcts/1
  # GET /projcts/1.json
  def show
  end

  # GET /projcts/new
  def new
    @projct = Projct.new
  end

  # GET /projcts/1/edit
  def edit
  end

  # POST /projcts
  # POST /projcts.json
  def create
    @projct = Projct.new(projct_params)
      
      @projct.user = current_user

    respond_to do |format|
      if @projct.save
        format.html { redirect_to @projct, notice: 'Projct was successfully created.' }
        format.json { render :show, status: :created, location: @projct }
      else
        format.html { render :new }
        format.json { render json: @projct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projcts/1
  # PATCH/PUT /projcts/1.json
  def update
    respond_to do |format|
      if @projct.update(projct_params)
        format.html { redirect_to @projct, notice: 'Projct was successfully updated.' }
        format.json { render :show, status: :ok, location: @projct }
      else
        format.html { render :edit }
        format.json { render json: @projct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projcts/1
  # DELETE /projcts/1.json
  def destroy
    @projct.destroy
    respond_to do |format|
      format.html { redirect_to projcts_url, notice: 'Projct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projct
      @projct = Projct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projct_params
      params.require(:projct).permit(:name, :summary, :startdate, :enddate)
    end
end
