class WhereFromsController < ApplicationController
  before_action :set_where_from, only: [:show, :edit, :update, :destroy]

  # GET /where_froms
  # GET /where_froms.json
  def index
    @where_froms = WhereFrom.all
  end

  # GET /where_froms/1
  # GET /where_froms/1.json
  def show
  end

  # GET /where_froms/new
  def new
    @where_from = WhereFrom.new
  end

  # GET /where_froms/1/edit
  def edit
  end

  # POST /where_froms
  # POST /where_froms.json
  def create
    @where_from = WhereFrom.new(where_from_params)

    respond_to do |format|
      if @where_from.save
        format.html { redirect_to @where_from, notice: 'Where from was successfully created.' }
        format.json { render :show, status: :created, location: @where_from }
      else
        format.html { render :new }
        format.json { render json: @where_from.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /where_froms/1
  # PATCH/PUT /where_froms/1.json
  def update
    respond_to do |format|
      if @where_from.update(where_from_params)
        format.html { redirect_to @where_from, notice: 'Where from was successfully updated.' }
        format.json { render :show, status: :ok, location: @where_from }
      else
        format.html { render :edit }
        format.json { render json: @where_from.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /where_froms/1
  # DELETE /where_froms/1.json
  def destroy
    @where_from.destroy
    respond_to do |format|
      format.html { redirect_to where_froms_url, notice: 'Where from was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_where_from
      @where_from = WhereFrom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def where_from_params
      params.require(:where_from).permit(:name)
    end
end
