class DeclaredGoodsController < ApplicationController
  before_action :set_declared_good, only: [:show, :edit, :update, :destroy]

  # GET /declared_goods
  # GET /declared_goods.json
  def index
    @declared_goods = DeclaredGood.all
  end

  # GET /declared_goods/1
  # GET /declared_goods/1.json
  def show
  end

  # GET /declared_goods/new
  def new
    @declared_good = DeclaredGood.new
  end

  # GET /declared_goods/1/edit
  def edit
  end

  # POST /declared_goods
  # POST /declared_goods.json
  def create
    @declared_good = DeclaredGood.new(declared_good_params)

    respond_to do |format|
      if @declared_good.save
        format.html { redirect_to @declared_good, notice: 'Declared good was successfully created.' }
        format.json { render :show, status: :created, location: @declared_good }
      else
        format.html { render :new }
        format.json { render json: @declared_good.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /declared_goods/1
  # PATCH/PUT /declared_goods/1.json
  def update
    respond_to do |format|
      if @declared_good.update(declared_good_params)
        format.html { redirect_to @declared_good, notice: 'Declared good was successfully updated.' }
        format.json { render :show, status: :ok, location: @declared_good }
      else
        format.html { render :edit }
        format.json { render json: @declared_good.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declared_goods/1
  # DELETE /declared_goods/1.json
  def destroy
    @declared_good.destroy
    respond_to do |format|
      format.html { redirect_to declared_goods_url, notice: 'Declared good was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_declared_good
      @declared_good = DeclaredGood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def declared_good_params
      params.fetch(:declared_good, {})
    end
end
