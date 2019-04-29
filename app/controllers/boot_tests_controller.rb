class BootTestsController < ApplicationController
  before_action :set_boot_test, only: [:show, :edit, :update, :destroy]

  # GET /boot_tests
  # GET /boot_tests.json
  def index
    @boot_tests = BootTest.all
  end

  # GET /boot_tests/1
  # GET /boot_tests/1.json
  def show
  end

  # GET /boot_tests/new
  def new
    @boot_test = BootTest.new
  end

  # GET /boot_tests/1/edit
  def edit
  end

  # POST /boot_tests
  # POST /boot_tests.json
  def create
    @boot_test = BootTest.new(boot_test_params)

    respond_to do |format|
      if @boot_test.save
        format.html { redirect_to @boot_test, notice: 'Boot test was successfully created.' }
        format.json { render :show, status: :created, location: @boot_test }
      else
        format.html { render :new }
        format.json { render json: @boot_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boot_tests/1
  # PATCH/PUT /boot_tests/1.json
  def update
    respond_to do |format|
      if @boot_test.update(boot_test_params)
        format.html { redirect_to @boot_test, notice: 'Boot test was successfully updated.' }
        format.json { render :show, status: :ok, location: @boot_test }
      else
        format.html { render :edit }
        format.json { render json: @boot_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boot_tests/1
  # DELETE /boot_tests/1.json
  def destroy
    @boot_test.destroy
    respond_to do |format|
      format.html { redirect_to boot_tests_url, notice: 'Boot test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boot_test
      @boot_test = BootTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boot_test_params
      params.fetch(:boot_test, {})
    end
end
