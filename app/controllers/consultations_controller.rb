class ConsultationsController < ApplicationController
	before_action :set_consultation, only: [:show, :edit, :update, :destroy]
	before_action :set_combo_values, only: [:new, :edit]

	# GET /consultations
	# GET /consultations.json
	def index
		@consultations = current_user.consultations
	end

	# GET /consultations/1
	# GET /consultations/1.json
	def show
	end

	# GET /consultations/new
	def new
		@consultation = Consultation.new
		@consultation.measurements.build
	end

	# GET /consultations/1/edit
	def edit
		@consultation.measurements.build
	end

	# POST /consultations
	# POST /consultations.json
	def create
		@consultation = current_user.consultations.new(consultation_params)

		respond_to do |format|
			if @consultation.save
				format.html { redirect_to @consultation, notice: 'La consulta fue creada exitosamente.' }
				format.json { render :show, status: :created, location: @consultation }
			else
				format.html { render :new }
				format.json { render json: @consultation.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /consultations/1
	# PATCH/PUT /consultations/1.json
	def update
		respond_to do |format|
			if @consultation.update(consultation_params)
				format.html { redirect_to @consultation, notice: 'La consulta fue actualizada exitosamente.' }
				format.json { render :show, status: :ok, location: @consultation }
			else
				format.html { render :edit }
				format.json { render json: @consultation.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /consultations/1
	# DELETE /consultations/1.json
	def destroy
		@consultation.destroy
		respond_to do |format|
			format.html { redirect_to consultations_url, notice: 'La consulta fue eliminada exitosamente.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_consultation
			@consultation = Consultation.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def consultation_params
			params.require(:consultation).permit(:patient_id, :other, :place, :subject, :annotations, :date, :diagnosis,
													 measurements_attributes: [:consultation_id,:height, :weight, :temperature, 
                                :blood_pressure, :heart_rate, :breathing_frequency, :annotations, :talla,:fum, :antitetanica,
                                :fuma, :semanas_amenorrea, :tension_arterial, :alt_uterina, :FCF, :edad_gestacion,
                                :tamanio_fetal_acorde, :contracciones, :dilatacion_cerv, :tipo_terminacion, :tiempo_terminacion,
                                :muerte_intraut, :episiotomia, :desgarros, :sexo, :peso_al_nacer, :talla_al_nacer,
                                :edad_por_ex_fisico, :patologias], prescriptions_attributes: [:body, 
													 :consultation_id])
		end

		def set_combo_values
			@patients = current_user.patients.order(:first_name, :last_name)
		end
end
