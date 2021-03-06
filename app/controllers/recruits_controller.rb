class RecruitsController < ApplicationController
  before_action :set_recruit, only: [:show, :edit, :update, :destroy]
  before_action :set_team, only: [:new, :edit]
  before_action :reset_password_session, only: [:show, :index]

  # GET /recruits
  # GET /recruits.json
  def index
    query = Recruit.is_published
    query = query.has_type_id(params[:type_id]) if params[:type_id].present?
    query = query.has_instrument_id(params[:instrument_id]) if params[:instrument_id].present?
    query = query.search_freeword(params[:freeword]) if params[:freeword].present?

    @recruits = query.page(params[:page])
  end

  # GET /recruits/1
  # GET /recruits/1.json
  def show
  end

  # GET /recruits/new
  def new
    @team ? team = @team : team = Team.new
    @recruit = Recruit.new(team: team, published_from: DateTime.now, published_to: DateTime.now)
  end

  # POST /recruits/1/edit
  def edit
    session[:password] = params[:password]
    redirect_to @recruit, alert: 'パスワードが違います' unless @recruit.team.authenticate(session[:password])
  end

  # POST /recruits
  # POST /recruits.json
  def create
    @recruit = Recruit.new(recruit_params)
    @recruit.team = Team.new(team_params) unless @recruit.team

    respond_to do |format|
      if @recruit.save
        format.html { redirect_to @recruit, notice: 'Recruit was successfully created.' }
        format.json { render :show, status: :created, location: @recruit }
      else
        format.html { render :new }
        format.json { render json: @recruit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recruits/1
  # PATCH/PUT /recruits/1.json
  def update
    respond_to do |format|
      if @recruit.update(recruit_params)
        format.html { redirect_to @recruit, notice: 'Recruit was successfully updated.' }
        format.json { render :show, status: :ok, location: @recruit }
      else
        format.html { render :edit }
        format.json { render json: @recruit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruits/1
  # DELETE /recruits/1.json
  def destroy
    return redirect_to @recruit, alert: 'パスワードが違います' unless @recruit.team.authenticate(session[:password])
    @recruit.destroy
    respond_to do |format|
      format.html { redirect_to recruits_url, notice: 'Recruit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruit
      @recruit = Recruit.find(params[:id])
    end

    def set_team
      params[:team_id] ? @team = Team.find(params[:team_id]) : @recruit ? @team = @recruit.team : Team.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recruit_params
      # TODO view からくる params が微妙な入れ子になってて要修正？
      # <ActionController::Parameters {"team"=>{"name"=>"ddd", "password"=>"ppp"}, "practice_place"=>"aaa", "practoce_time"=>"ttt", "free_text"=>"fff"} permitted: false>
      params[:recruit].try!(:permit!)
    end

    def team_params
      params[:team].try!(:permit!)
    end

    def reset_password_session
      session[:password] = nil if session[:password]
    end
end
