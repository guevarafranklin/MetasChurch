class BautismosConversosController < ApplicationController
  before_action :set_bautismos_converso, only: %i[ show edit update destroy ]

  # GET /bautismos_conversos or /bautismos_conversos.json
  def index
    @bautismos_conversos = BautismosConverso.all
  end

  # GET /bautismos_conversos/1 or /bautismos_conversos/1.json
  def show
  end

  # GET /bautismos_conversos/new
  def new
    @bautismos_converso = BautismosConverso.new
  end

  # GET /bautismos_conversos/1/edit
  def edit
  end

  # POST /bautismos_conversos or /bautismos_conversos.json
  def create
    @bautismos_converso = BautismosConverso.new(bautismos_converso_params)

    respond_to do |format|
      if @bautismos_converso.save
        format.html { redirect_to @bautismos_converso, notice: "Bautismos converso was successfully created." }
        format.json { render :show, status: :created, location: @bautismos_converso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bautismos_converso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bautismos_conversos/1 or /bautismos_conversos/1.json
  def update
    respond_to do |format|
      if @bautismos_converso.update(bautismos_converso_params)
        format.html { redirect_to @bautismos_converso, notice: "Bautismos converso was successfully updated." }
        format.json { render :show, status: :ok, location: @bautismos_converso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bautismos_converso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bautismos_conversos/1 or /bautismos_conversos/1.json
  def destroy
    @bautismos_converso.destroy!

    respond_to do |format|
      format.html { redirect_to bautismos_conversos_path, status: :see_other, notice: "Bautismos converso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bautismos_converso
      @bautismos_converso = BautismosConverso.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bautismos_converso_params
      params.expect(bautismos_converso: [ :name, :gender, :age, :attendande, :bautism_date, :confirmation_date, :unidads_id ])
    end
end
