class AsistentsController < ApplicationController
  before_action :set_asistent, only: [:show, :edit, :update, :destroy]

  # GET /asistents
  # GET /asistents.json
  def index
    @asistents = Asistent.all
  end

  # GET /asistents/1
  # GET /asistents/1.json
  def show
  end

  # GET /asistents/new
  def new
    @asistent = Asistent.new
  end

  # GET /asistents/1/edit
  def edit
  end

  # POST /asistents
  # POST /asistents.json
  def create
    @asistent = Asistent.new(asistent_params)

    respond_to do |format|
      if @asistent.save
        format.html { redirect_to @asistent, notice: 'Asistent was successfully created.' }
        format.json { render :show, status: :created, location: @asistent }
      else
        format.html { render :new }
        format.json { render json: @asistent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistents/1
  # PATCH/PUT /asistents/1.json
  def update
    respond_to do |format|
      if @asistent.update(asistent_params)
        format.html { redirect_to @asistent, notice: 'Asistent was successfully updated.' }
        format.json { render :show, status: :ok, location: @asistent }
      else
        format.html { render :edit }
        format.json { render json: @asistent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistents/1
  # DELETE /asistents/1.json
  def destroy
    @asistent.destroy
    respond_to do |format|
      format.html { redirect_to asistents_url, notice: 'Asistent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistent
      @asistent = Asistent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asistent_params
      params.require(:asistent).permit(:jmeno, :email, :telefon, :poznamka, :ma_mlcenlivost)
    end
end
