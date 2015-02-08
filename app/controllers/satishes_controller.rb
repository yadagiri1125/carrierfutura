class SatishesController < ApplicationController
  before_action :set_satish, only: [:show, :edit, :update, :destroy]

  # GET /satishes
  # GET /satishes.json
  def index
    @satishes = Satish.all
  end

  # GET /satishes/1
  # GET /satishes/1.json
  def show
  end

  # GET /satishes/new
  def new
    @satish = Satish.new
  end

  # GET /satishes/1/edit
  def edit
  end

  # POST /satishes
  # POST /satishes.json
  def create
    @satish = Satish.new(satish_params)

    respond_to do |format|
      if @satish.save
        format.html { redirect_to @satish, notice: 'Satish was successfully created.' }
        format.json { render :show, status: :created, location: @satish }
      else
        format.html { render :new }
        format.json { render json: @satish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /satishes/1
  # PATCH/PUT /satishes/1.json
  def update
    respond_to do |format|
      if @satish.update(satish_params)
        format.html { redirect_to @satish, notice: 'Satish was successfully updated.' }
        format.json { render :show, status: :ok, location: @satish }
      else
        format.html { render :edit }
        format.json { render json: @satish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /satishes/1
  # DELETE /satishes/1.json
  def destroy
    @satish.destroy
    respond_to do |format|
      format.html { redirect_to satishes_url, notice: 'Satish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_satish
      @satish = Satish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def satish_params
      params.require(:satish).permit(:name)
    end
end
