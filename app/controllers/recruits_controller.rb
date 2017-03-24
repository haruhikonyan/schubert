class RecruitsController < ApplicationController
  before_action :set_recruit, only: [:show, :edit, :update, :destroy]

  # GET /recruits
  # GET /recruits.json
  def index
    # 検索条件増えたらどうなるんだろうね。。。
    @recruits = params[:instrument_id].present? ? Recruit.has_instrument_id(params[:instrument_id]) : Recruit.all
  end

  # GET /recruits/1
  # GET /recruits/1.json
  def show
  end

  # GET /recruits/new
  def new
    @recruit = Recruit.new(team: Team.new)
  end

  # GET /recruits/1/edit
  def edit
    redirect_to @recruit, alert: 'パスワードが違います' unless @recruit.team.authenticate(params[:password])
  end

  # POST /recruits
  # POST /recruits.json
  def create
    team = Team.new(team_params)
    @recruit = Recruit.new(recruit_params)
    @recruit.team = team

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
      if @recruit.team.update(team_params) && @recruit.update(recruit_params)
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def recruit_params
      # TODO view からくる params が微妙な入れ子になってて要修正？
      # <ActionController::Parameters {"team"=>{"name"=>"ddd", "password"=>"ppp"}, "practice_place"=>"aaa", "practoce_time"=>"ttt", "free_text"=>"fff"} permitted: false>
      params[:recruit].except(:team).try!(:permit!)
    end

    def team_params
      params[:recruit][:team].try!(:permit!)
    end
end
