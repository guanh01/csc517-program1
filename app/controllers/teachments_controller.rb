class TeachmentsController < ApplicationController
  before_action :set_teachment, only: [:show, :edit, :update, :destroy]

  # GET /teachments
  # GET /teachments.json
  def index
    @teachments = Teachment.all
  end

  # GET /teachments/1
  # GET /teachments/1.json
  def show
  end

  # GET /teachments/new
  def new
    @teachment = Teachment.new
  end

  # GET /teachments/1/edit
  def edit
  end

  # POST /teachments
  # POST /teachments.json
  def create
    @teachment = Teachment.new(teachment_params)

    respond_to do |format|
      if @teachment.save
        format.html { redirect_to @teachment, notice: 'Teachment was successfully created.' }
        format.json { render :show, status: :created, location: @teachment }
      else
        format.html { render :new }
        format.json { render json: @teachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachments/1
  # PATCH/PUT /teachments/1.json
  def update
    respond_to do |format|
      if @teachment.update(teachment_params)
        format.html { redirect_to @teachment, notice: 'Teachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @teachment }
      else
        format.html { render :edit }
        format.json { render json: @teachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachments/1
  # DELETE /teachments/1.json
  def destroy
    course = @teachment.course
    @teachment.destroy
    respond_to do |format|
      format.html { redirect_to course, notice: 'The instructor is successfully removed!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teachment
      @teachment = Teachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teachment_params
      params.require(:teachment).permit(:instructor_id, :course_id)
    end
end
