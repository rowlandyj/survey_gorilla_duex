class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
    @user = User.first
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @user = User.first
    @survey = Survey.new
    3.times do
      question = @survey.questions.build
      4.times { question.answers.build }
    end
  end

  def create
    @user = User.first
    @survey = Survey.new(params[:survey])
    if @survey.save
      flash[:notice] = "Successfully created survey."
      
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
end
