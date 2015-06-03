class SurveysController < ApplicationController
  before_action :find_survey, only: [:show, :update]
  before_action :all_surveys, only: [:index]

  def index;end

  def show
    @questions = Question.includes(:options).all
  end

  def create
    p "*"*30
    params['questions'].each do |k,v|

    end
    redirect_to root_path
  end

  # def update;end

  # def destroy;end

  private

  # def questionare_params
  #   params.require(:survey).permit(:questions)#, answer_attributes: [:option_id, :survey_id])
  # end

  def find_survey
    @survey = Survey.find(params[:id])
  end

  def all_surveys
    @surveys = Survey.includes(:questions).all
  end
end
