class JudicialProcessesController < ApplicationController
  before_action :set_judicial_process, only: [:show, :edit, :update, :destroy]

  # GET /judicial_processes
  # GET /judicial_processes.json
  def index
    @judicial_processes = JudicialProcess.all
  end

  # GET /judicial_processes/1
  # GET /judicial_processes/1.json
  def show
  end

  # GET /judicial_processes/new
  def new
    @judicial_process = JudicialProcess.new
  end

  # GET /judicial_processes/1/edit
  def edit
  end

  # POST /judicial_processes
  # POST /judicial_processes.json
  def create
    @judicial_process = JudicialProcess.new(judicial_process_params)

    respond_to do |format|
      if @judicial_process.save
        format.html { redirect_to @judicial_process, notice: 'Judicial process was successfully created.' }
        format.json { render :show, status: :created, location: @judicial_process }
      else
        format.html { render :new }
        format.json { render json: @judicial_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /judicial_processes/1
  # PATCH/PUT /judicial_processes/1.json
  def update
    respond_to do |format|
      if @judicial_process.update(judicial_process_params)
        format.html { redirect_to @judicial_process, notice: 'Judicial process was successfully updated.' }
        format.json { render :show, status: :ok, location: @judicial_process }
      else
        format.html { render :edit }
        format.json { render json: @judicial_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /judicial_processes/1
  # DELETE /judicial_processes/1.json
  def destroy
    @judicial_process.destroy
    respond_to do |format|
      format.html { redirect_to judicial_processes_url, notice: 'Judicial process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_judicial_process
      @judicial_process = JudicialProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def judicial_process_params
      params.fetch(:judicial_process, {})
    end
end
