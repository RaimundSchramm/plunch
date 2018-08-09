class MealLogEntriesController < ApplicationController
  before_action :set_meal_log
  before_action :set_meal_log_entry, only: [:show, :edit, :update, :destroy]

  # GET /meal_log_entries
  # GET /meal_log_entries.json
  def index
    @meal_log_entries = @meal_log.meal_log_entries.all
  end

  # GET /meal_log_entries/1
  # GET /meal_log_entries/1.json
  def show
  end

  # GET /meal_log_entries/new
  def new
    @meal_log_entry = @meal_log.meal_log_entries.new
  end

  # GET /meal_log_entries/1/edit
  def edit
  end

  # POST /meal_log_entries
  # POST /meal_log_entries.json
  def create
    @meal_log_entry = @meal_log.meal_log_entries.new(meal_log_entry_params)

    respond_to do |format|
      if @meal_log_entry.save
        format.html { redirect_to [@meal_log, @meal_log_entry], notice: 'Meal log entry was successfully created.' }
        format.json { render :show, status: :created, location: @meal_log_entry }
      else
        format.html { render :new }
        format.json { render json: @meal_log_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_log_entries/1
  # PATCH/PUT /meal_log_entries/1.json
  def update
    respond_to do |format|
      if @meal_log_entry.update(meal_log_entry_params)
        format.html { redirect_to [@meal_log, @meal_log_entry], notice: 'Meal log entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_log_entry }
      else
        format.html { render :edit }
        format.json { render json: @meal_log_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_log_entries/1
  # DELETE /meal_log_entries/1.json
  def destroy
    @meal_log_entry.destroy
    respond_to do |format|
      format.html { redirect_to meal_log_meal_log_entries_url(@meal_log), notice: 'Meal log entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_log
      @meal_log = MealLog.find(params[:meal_log_id])
    end

    def set_meal_log_entry
      @meal_log_entry = @meal_log.meal_log_entries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_log_entry_params
      params.require(:meal_log_entry).permit(:eaten_on, :meal, :meal_log_id)
    end
end
