class PoliticsController < ApplicationController
  before_action :set_politic, only: [:show, :edit, :update, :destroy]

  # GET /politics
  # GET /politics.json
  def index
    @politics = Politic.all
  end

  # GET /politics/1
  # GET /politics/1.json
  def show
    @politic = Politic.find(params[:id])
  end

  # GET /politics/new
  def new
    @politic = Politic.new
  end

  # GET /politics/1/edit
  def edit
  end

  # POST /politics
  # POST /politics.json
  def create
    @politic = Politic.new(politic_params)

    respond_to do |format|
      if @politic.save
        format.html { redirect_to :politics, notice: 'Politic was successfully created.' }
        format.json { render :show, status: :created, location: @politic }
      else
        format.html { render :new }
        format.json { render json: @politic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politics/1
  # PATCH/PUT /politics/1.json
  def update
    respond_to do |format|
      if @politic.update(politic_params)
        format.html { redirect_to @politic, notice: 'Politic was successfully updated.' }
        format.json { render :show, status: :ok, location: @politic }
      else
        format.html { render :edit }
        format.json { render json: @politic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politics/1
  # DELETE /politics/1.json
  def destroy
    @politic.destroy
    respond_to do |format|
      format.html { redirect_to politics_url, notice: 'Politic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politic
      @politic = Politic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def politic_params
      params.require(:politic).permit(:name, :age, :state, :city, :part)
    end
end
