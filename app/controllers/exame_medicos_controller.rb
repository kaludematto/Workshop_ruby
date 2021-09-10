class ExameMedicosController < ApplicationController
  before_action :set_exame_medico, only: %i[ show edit update destroy ]

  # GET /exame_medicos or /exame_medicos.json
  def index
    @exame_medicos = ExameMedico.all
  end

  # GET /exame_medicos/1 or /exame_medicos/1.json
  def show
  end

  # GET /exame_medicos/new
  def new
    @exame_medico = ExameMedico.new
  end

  # GET /exame_medicos/1/edit
  def edit
  end

  # POST /exame_medicos or /exame_medicos.json
  def create
    @exame_medico = ExameMedico.new(exame_medico_params)

    respond_to do |format|
      if @exame_medico.save
        format.html { redirect_to @exame_medico, notice: "Exame medico was successfully created." }
        format.json { render :show, status: :created, location: @exame_medico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exame_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exame_medicos/1 or /exame_medicos/1.json
  def update
    respond_to do |format|
      if @exame_medico.update(exame_medico_params)
        format.html { redirect_to @exame_medico, notice: "Exame medico was successfully updated." }
        format.json { render :show, status: :ok, location: @exame_medico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exame_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exame_medicos/1 or /exame_medicos/1.json
  def destroy
    @exame_medico.destroy
    respond_to do |format|
      format.html { redirect_to exame_medicos_url, notice: "Exame medico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_exame_medico
      @exame_medico = ExameMedico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exame_medico_params
      params.require(:exame_medico).permit(:nome, :tipo, :status, :laboratorio_id, :laboratorio_name)
    end
end
