class ReportsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @report = Report.new
    @reports = Report.all
    if params[:search].present?
      if params[:search][:searchall].present?
        @reports = []
        @reports << Report.where("location ILIKE ?", "%#{params[:search][:searchall]}%")
        @reports << Report.where("title ILIKE ?", "%#{params[:search][:searchall]}%")
        @reports << Report.where("content ILIKE ?", "%#{params[:search][:searchall]}%")
        @reports = @reports.flatten.compact.uniq
        @reports
      end
    # elsif params[:geocoder].present?
    # @location = Location.near(params[:search], 50, :order => :distance)
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

