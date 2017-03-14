class RecruitRequestsController < ApplicationController
  before_action :set_recruit_request, only: [:show, :edit, :update, :destroy]

  # GET /recruit_requests
  # GET /recruit_requests.json
  def index
    @recruit_requests = RecruitRequest.all
  end

  # GET /recruit_requests/1
  # GET /recruit_requests/1.json
  def show
  end

  # GET /recruit_requests/new
  def new
    @recruit_request = RecruitRequest.new
  end

  # GET /recruit_requests/1/edit
  def edit
  end

  # POST /recruit_requests
  # POST /recruit_requests.json
  def create
    @recruit_request = RecruitRequest.new(recruit_request_params)

    respond_to do |format|
      if @recruit_request.save
        format.html { redirect_to @recruit_request, notice: 'Recruit request was successfully created.' }
        format.json { render :show, status: :created, location: @recruit_request }
      else
        format.html { render :new }
        format.json { render json: @recruit_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recruit_requests/1
  # PATCH/PUT /recruit_requests/1.json
  def update
    respond_to do |format|
      if @recruit_request.update(recruit_request_params)
        format.html { redirect_to @recruit_request, notice: 'Recruit request was successfully updated.' }
        format.json { render :show, status: :ok, location: @recruit_request }
      else
        format.html { render :edit }
        format.json { render json: @recruit_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruit_requests/1
  # DELETE /recruit_requests/1.json
  def destroy
    @recruit_request.destroy
    respond_to do |format|
      format.html { redirect_to recruit_requests_url, notice: 'Recruit request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruit_request
      @recruit_request = RecruitRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recruit_request_params
      params.fetch(:recruit_request, {})
    end
end
