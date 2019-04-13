class RoughsController < ApplicationController
  before_action :set_rough, only: [:show, :edit, :update, :destroy]

  # GET /roughs
  # GET /roughs.json
  def index
    @roughs = Rough.with_attached_rough.all
  end

  # GET /roughs/1
  # GET /roughs/1.json
  def show
  end

  # GET /roughs/new
  def new
    @rough = Rough.new
  end

  # GET /roughs/1/edit
  def edit
  end

  # POST /roughs
  # POST /roughs.json
  def create
    @rough = Rough.new(rough_params)

    respond_to do |format|
      if @rough.save
        format.html { redirect_to @rough, notice: 'Rough was successfully created.' }
        format.json { render :show, status: :created, location: @rough }
      else
        format.html { render :new }
        format.json { render json: @rough.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roughs/1
  # PATCH/PUT /roughs/1.json
  def update
    respond_to do |format|
      if @rough.update(rough_params)
        format.html { redirect_to @rough, notice: 'Rough was successfully updated.' }
        format.json { render :show, status: :ok, location: @rough }
      else
        format.html { render :edit }
        format.json { render json: @rough.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roughs/1
  # DELETE /roughs/1.json
  def destroy
    @rough.destroy
    respond_to do |format|
      format.html { redirect_to roughs_url, notice: 'Rough was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rough
      @rough = Rough.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rough_params
      params.require(:rough).permit(:title, :tag, :category,:content,:rough,:image)
    end
end
