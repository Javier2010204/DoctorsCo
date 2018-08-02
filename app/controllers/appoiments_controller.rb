class AppoimentsController < ApplicationController
  before_action :set_appoiment, only: [:show, :edit, :update, :destroy]
  before_action :set_combo_values, only: [:new, :edit]

  # GET /appointments
  # GET /appointments.json
  def index
    @appoiments = current_user.appoiments
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appoiment = Appoiment.new
    @current_user = current_user
    @my_time = Time.now
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appoiment = current_user.appoiments.new(appoiment_params)

    respond_to do |format|
      if @appoiment.save
        format.html { redirect_to @appoiment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appoiment }
      else
        format.html { render :new }
        format.json { render json: @appoiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appoiment.update(appoiment_params)
        format.html { redirect_to @appoiment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appoiment }
      else
        format.html { render :edit }
        format.json { render json: @appoiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appoiment.destroy
    respond_to do |format|
      format.html { redirect_to appoiments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoiment
      @appoiment = Appoiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appoiment_params
      params.require(:appoiment).permit(:patient_name,:date, :hour, :annotations, :patient_id, :user_id)
    end

    def set_combo_values
      @patients = current_user.patients.order(:last_name)
    end
end
