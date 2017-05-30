class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy, :answer, :create_answer]
  before_action :set_answer_questionnaire, only: [:show_answer]

  # GET /questionnaires
  # GET /questionnaires.json
  def index
    @questionnaires = Questionnaire.all
  end

  # GET /questionnaires/1
  # GET /questionnaires/1.json
  def show
  end

  # GET /questionnaires/new
  def new
    @questionnaire = Questionnaire.new
  end

  # GET /questionnaires/1/edit
  def edit
  end

  # POST /questionnaires
  # POST /questionnaires.json
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    # 本当は複数のitemおよびchoicesが飛んでくるからどう処理しようものか。。。
    questionnaire_item = QuestionnaireItem.new(questionnaire_item_params)
    questionnaire_choices_option = QuestionnaireChoicesOption.new(questionnaire_choices_option_params)
    questionnaire_choices_option.questionnaire_item = questionnaire_item
    questionnaire_item.questionnaire = @questionnaire

    respond_to do |format|
      # 個別に一つ一つ保存していくのではなく一気に保存したい
      if questionnaire_choices_option.save && questionnaire_item.save && @questionnaire.save
        format.html { redirect_to @questionnaire, notice: 'Questionnaire was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaire }
      else
        format.html { render :new }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaires/1
  # PATCH/PUT /questionnaires/1.json
  def update
    respond_to do |format|
      if @questionnaire.update(questionnaire_params)
        format.html { redirect_to @questionnaire, notice: 'Questionnaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaire }
      else
        format.html { render :edit }
        format.json { render json: @questionnaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaires/1
  # DELETE /questionnaires/1.json
  def destroy
    @questionnaire.destroy
    respond_to do |format|
      format.html { redirect_to questionnaires_url, notice: 'Questionnaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /questionnaires/1/answer
  def answer
    @questionnaire_answer = QuestionnaireAnswer.new
  end

  def create_answer
    # TODO 本当はここで永続化したくない
    @QuestionnaireAnswer = QuestionnaireAnswer.new(questionnaire: @questionnaire)

    new_qies = []
    questionnaire_item_answers_params.each_with_index do |qia_params, i|
      qia = QuestionnaireItemAnswer.new(qia_params)
      qia.questionnaire_choices_option_ids = params[:questionnaire_choices_options][i.to_s]
      qia.questionnaire_answer = @QuestionnaireAnswer
      new_qies << qia
    end
    @QuestionnaireAnswer.questionnaire_item_answers = new_qies
    
    respond_to do |format|
      # 個別に一つ一つ保存していくのではなく一気に保存したい
      if @QuestionnaireAnswer.save
        format.html { redirect_to show_answer_questionnaire_path(@QuestionnaireAnswer), notice: 'QuestionnaireAnswer was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show_answeer

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end
    def set_answer_questionnaire
      @questionnaire_answer = QuestionnaireAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaire_params
      params[:questionnaire].try!(:permit!)
    end

    def questionnaire_item_params
      params[:questionnaire_item].try!(:permit!)
    end

    def questionnaire_choices_option_params
      params[:questionnaire_choices_option].try!(:permit!)
    end

    def questionnaire_item_answers_params
      params[:questionnaire_item_answers].each do |qia_params|
        qia_params.try!(:permit!)
      end
    end
end
