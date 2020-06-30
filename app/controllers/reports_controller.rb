class ReportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @report = Report.new
    @reports = Report.all
    if params[:search].present?
      if params[:search][:searchall].present?
        @reports = []
        @reports << Report.find_by(location: params[:search][:searchall]) if !Report.find_by(location: params[:search][:searchall]).nil?
        @reports << Report.find_by(title: params[:search][:searchall]) if !Report.find_by(title: params[:search][:searchall]).nil?
        @reports << Report.find_by(content: params[:search][:searchall]) if !Report.find_by(content: params[:search][:searchall]).nil?
      end
    else
      @reports = Report.all
    end
  end

  def create
    @user = current_user
    @report = Report.new(report_params)
    @report.user = @user
    if @report.save
      redirect_to reports_path
    else
      render :index
    end
  end

  def show
    # @report = Report.find(params[:id])
    # @report = Report.new
  end

  private

  def report_params
    params.require(:report).permit(:title, :content, :location, :photo)
  end
end

