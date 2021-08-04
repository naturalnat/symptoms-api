class SymptomsController < ApplicationController
  before_action :set_symptom, only: [:show, :update, :destroy]

  # GET /symptoms
  def index
    @symptoms = Symptom.all

    render json: @symptoms
  end

  # GET /symptoms/1
  def show
    render json: @symptom
  end

  # POST /symptoms
  def create
    @symptom = Symptom.new(symptom_params)

    if @symptom.save
      render json: @symptom, status: :created, location: @symptom
    else
      render json: @symptom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /symptoms/1
  def update
    if @symptom.update(symptom_params)
      render json: @symptom
    else
      render json: @symptom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /symptoms/1
  def destroy
    id = @symptom.id
    @symptom.destroy
    render json: id
  end

  def addflag 
    @symptom = Symptom.find(params[:id])
    puts @symptom.flag

    if @symptom.flag == false
      @symptom.flag = true
      @symptom.save
    else
      @symptom.flag = false
      @symptom.save
    end 

    render json: @symptom
    
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptom
      @symptom = Symptom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def symptom_params
      params.require(:symptom).permit(:title, :severity, :notes, :flag)
    end
end
