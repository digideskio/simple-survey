class SurveysController < ApplicationController
  before_action :find_survey, only: [:show, :update]
  before_action :all_surveys, only: [:index]

  def index;end

  def show
    @questions = Question.includes(:options).all
  end

  # def new
  #   @survey = Survey.new
  # end

  # def create;end

  # def update;end

  # def destroy;end

  private

  def find_survey
    @survey = Survey.find(params[:id])
  end

  def all_surveys
    @surveys = Survey.includes(:questions).all
  end
end
